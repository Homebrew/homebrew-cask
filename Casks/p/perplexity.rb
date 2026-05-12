cask "perplexity" do
  version "26.19.0"
  sha256 "20f86784c170c4d733eab8b80df246aa7f5190f87ffda15241b8c64022b2be9f"

  url "https://macos-download.perplexity.ai/Perplexity.dmg",
      verified: "macos-download.perplexity.ai/"
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
