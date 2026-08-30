cask "feedflow" do
  url_end = on_system_conditional macos: ".dmg", linux: "-x86_64.AppImage"

  version "1.16.1,all"

  on_macos do
    sha256 "0d488e15404f5a3b747e562503f766006dabae392915b2d3184a651cc448cadc"

    depends_on macos: :monterey
    depends_on arch: :arm64

    app "FeedFlow.app"

    zap trash: [
      "~/Library/Application Support/FeedFlow",
      "~/Library/Saved Application State/com.prof18.feedflow.savedState",
    ]
  end
  on_linux do
    sha256 "3226391b76ce1f30f88b3da75b2a223a8c63e66c47d1a103dad63b66c11c4f48"

    depends_on arch: :x86_64

    app_image "FeedFlow-#{version.csv.first}-x86_64.AppImage", target: "FeedFlow.AppImage"
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
