cask "comet" do
  arch arm: "arm64", intel: "x64"

  version "143.0.7499.33687"
  sha256 :no_check

  url "https://www.perplexity.ai/rest/browser/download?channel=stable&platform=mac_#{arch}"
  name "Comet"
  desc "Web browser with integrated AI assistant"
  homepage "https://www.perplexity.ai/comet"

  livecheck do
    url "https://www.perplexity.ai/rest/browser/update?browser=1.1.1.1&channel=stable&platform=mac_#{arch}&machine=0"
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
