cask "feedflow" do
  url_end = on_system_conditional macos: ".dmg", linux: "-x86_64.AppImage"

  version "1.19.0,all"
  sha256 arm:          "d0f5e2498ecd67d1103fa853964ba6a0a7ab96ce719697ca284605284fd9745e",
         x86_64_linux: "7714bbaa4fcbfa70bfd2cd9fb859138a71739c65ec94fd61ecb276f1abd09cba"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :monterey

    app "FeedFlow.app"

    zap trash: [
      "~/Library/Application Support/FeedFlow",
      "~/Library/Saved Application State/com.prof18.feedflow.savedState",
    ]
  end
  on_linux do
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
