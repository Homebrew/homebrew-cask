cask "perplexity" do
  arch arm: "arm64", intel: "x64"

  version "145.2.7632.4581"
  sha256 "d7628822dc8ee48a673df43112a183194f1cf8b724e0497f048cb44f89f15fee"

  url "https://www.perplexity.ai/rest/browser/download?channel=stable&platform=mac_#{arch}"
  name "Perplexity"
  desc "AI-powered search and answer engine"
  homepage "https://www.perplexity.ai/"

  livecheck do
    url "https://www.perplexity.ai/rest/browser/update?browser=1.1.1.1&channel=stable&platform=mac_#{arch}&machine=0"
    strategy :json do |json|
      json.dig("body", "browser_version")
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Perplexity.app"

  zap trash: [
    "~/Library/Application Support/ai.perplexity.pro",
    "~/Library/Caches/ai.perplexity.pro",
    "~/Library/Preferences/ai.perplexity.pro.plist",
    "~/Library/Saved Application State/ai.perplexity.pro.savedState",
  ]
end
