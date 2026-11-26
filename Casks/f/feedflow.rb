cask "feedflow" do
  url_end = on_system_conditional macos: ".dmg", linux: "-x86_64.AppImage"

  version "1.22.0,all"
  sha256 arm:          "251f80682ab3ec8632ccef5d0a896948bf2244f653231fc9c8b4392796f635c3",
         x86_64_linux: "b4ca3ff6f6b45660ef7564e98aa9623c6870135387d2b1112514d230aa2f54d0"

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

        match.values_at(1, 2).compact_blank.join(",")
      end
    end
  end
end
