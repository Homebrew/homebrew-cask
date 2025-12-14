cask "comet" do
  version "143.0.7499.33687"
  sha256 :no_check

  arch arm: "arm64", intel: "x64"

  url "https://www.perplexity.ai/rest/browser/download?channel=stable&platform=mac_#{arch}"

  name "Comet"
  desc "Web browser with integrated AI assistant"
  homepage "https://www.perplexity.ai/comet"

  livecheck_browser = version.sub(/(\d+)$/) { |match| (match.to_i - 1).to_s }

  livecheck do
    url "https://www.perplexity.ai/rest/browser/update?browser=#{livecheck_browser}&channel=stable&platform=mac_#{arch}&machine=0000000000000000000000000000000000000000000000000000000000000000"
    strategy :json do |json|
      json.dig("body", "browser_version")
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Comet.app"

  zap trash: [
    "~/Library/Application Support/ai.perplexity.comet",
    "~/Library/Caches/ai.perplexity.comet",
    "~/Library/Preferences/ai.perplexity.comet.plist",
    "~/Library/Saved Application State/ai.perplexity.comet.savedState",
    "~/Library/WebKit/ai.perplexity.comet",
  ]
end
