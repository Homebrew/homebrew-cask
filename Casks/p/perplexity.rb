cask "perplexity" do
  version :latest
  sha256 :no_check

  url "https://macos-download.perplexity.ai/Perplexity.dmg"
  name "Perplexity"
  desc "AI-powered answer engine with agentic search capabilities"
  homepage "https://www.perplexity.ai/"

  livecheck do
    url "https://macos-download.perplexity.ai/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sonoma"

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
