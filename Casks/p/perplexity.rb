cask "perplexity" do
  version "26.20.0"
  sha256 :no_check

  url "https://www.perplexity.ai/rest/browser/download?channel=stable&platform=mac_#{arch}"
  name "Perplexity"
  desc "AI-powered answer engine with agentic search capabilities"
  homepage "https://www.perplexity.ai/"

  livecheck do
    url "https://www.perplexity.ai/rest/browser/update?browser=1.1.1.1&channel=stable&platform=mac_#{arch}&machine=0"
    strategy :json do |json|
      json.dig("body", "browser_version")
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Perplexity.app"

  zap trash: [
    "~/Library/Application Support/Perplexity",
    "~/Library/Caches/ai.perplexity.macv3",
    "~/Library/HTTPStorages/ai.perplexity.macv3",
    "~/Library/Logs/Perplexity",
    "~/Library/Preferences/ai.perplexity.macv3.plist",
    "~/Library/Saved Application State/ai.perplexity.macv3.savedState",
  ]
end
