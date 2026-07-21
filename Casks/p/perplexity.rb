cask "perplexity" do
  version "26.28.1"
  sha256 :no_check

  url "https://macos-download.perplexity.ai/Perplexity.dmg"
  name "Perplexity AI"
  desc "AI-powered answer engine with Personal Computer agent"
  homepage "https://www.perplexity.ai/personal-computer"

  livecheck do
    url "https://macos-download.perplexity.ai/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Perplexity.app"

  zap trash: [
    "~/Library/Application Support/ai.perplexity.macv3",
    "~/Library/Caches/ai.perplexity.macv3",
    "~/Library/HTTPStorages/ai.perplexity.macv3",
    "~/Library/Preferences/ai.perplexity.macv3.plist",
    "~/Library/Saved Application State/ai.perplexity.macv3.savedState",
    "~/Library/WebKit/ai.perplexity.macv3",
  ]
end
