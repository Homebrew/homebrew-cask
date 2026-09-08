cask "feedflow" do
  url_end = on_system_conditional macos: ".dmg", linux: "-x86_64.AppImage"

  version "1.17.0,all"

  on_macos do
    sha256 "37dfe909fe9fae4435bffbf6cce25c31e8ffbeb0e4ca301e9cd666e3a0dc8a6b"

    depends_on macos: :monterey
    depends_on arch: :arm64

    app "FeedFlow.app"

    zap trash: [
      "~/Library/Application Support/FeedFlow",
      "~/Library/Saved Application State/com.prof18.feedflow.savedState",
    ]
  end
  on_linux do
    sha256 "2408147d440da2de9424a221fe560b6f0191ffcc9d342325f1c20ff0aeae9fc8"

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
