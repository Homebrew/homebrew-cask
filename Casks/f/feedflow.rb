cask "feedflow" do
  url_end = on_system_conditional macos: ".dmg", linux: "-x86_64.AppImage"

  version "1.21.0,all"
  sha256 arm:          "120a4d87e29d2dc4d739283b0e6a17858e4cbae1438bb94be6b9b41c1a7c4ac4",
         x86_64_linux: "ec541239c9f0c476862858059fcbc8d493414225f3de05aff5607bcfc75fdc7e"

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
