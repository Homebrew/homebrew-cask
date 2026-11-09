cask "feedflow" do
  url_end = on_system_conditional macos: ".dmg", linux: "-x86_64.AppImage"

  version "1.20.0,all"
  sha256 arm:          "d248677cf68018630be83dcc37c04f8a5fdcf19b988e120a09b9f8956360f8b7",
         x86_64_linux: "9089864c1f6a3e9115225caacfd4386523cc05f32262b2d4359564422ef2eb75"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :monterey

    app "FeedFlow.app"

    zap trash: [
      "~/Library/Application Support/FeedFlow",
      "~/Library/Preferences/com.prof18.feedflow.plist",
      "~/Library/Saved Application State/com.prof18.feedflow.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "FeedFlow-#{version.csv.first}-x86_64.AppImage", target: "FeedFlow.AppImage"

    zap trash: [
      "~/.local/share/FeedFlow",
      "~/.local/share/icons/hicolor/512x512/apps/com.prof18.feedflow.png",
    ]
  end

  url "https://github.com/prof18/feed-flow/releases/download/#{version.csv.first}-#{version.csv.second}/FeedFlow-#{version.csv.first}#{url_end}"
  name "FeedFlow"
  desc "RSS reader"
  homepage "https://www.feedflow.dev/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)(?:[._-](.+))?/[^/]+\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.filter_map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next unless match

        match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
      end
    end
  end
end
