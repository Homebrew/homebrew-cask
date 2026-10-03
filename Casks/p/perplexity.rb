cask "perplexity" do
  version "26.38.0"
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

  uninstall quit: "ai.perplexity.macv3"

  zap trash: [
    "~/Library/Application Scripts/*.ai.perplexity.macv3.shared",
    "~/Library/Application Scripts/ai.perplexity.macv3.PerplexityRichNotification",
    "~/Library/Application Scripts/group.ai.perplexity.app",
    "~/Library/Application Support/ai.perplexity.macv3",
    "~/Library/Caches/ai.perplexity.macv3",
    "~/Library/Caches/ai.perplexity.macv3.perplexityd",
    "~/Library/Caches/SentryCrash/Perplexity",
    "~/Library/Containers/ai.perplexity.macv3.PerplexityRichNotification",
    "~/Library/Group Containers/*.ai.perplexity.macv3.shared",
    "~/Library/Group Containers/group.ai.perplexity.app",
    "~/Library/HTTPStorages/ai.perplexity.macv3",
    "~/Library/HTTPStorages/ai.perplexity.macv3.binarycookies",
    "~/Library/HTTPStorages/ai.perplexity.macv3.perplexityd",
    "~/Library/HTTPStorages/ai.perplexity.macv3.perplexityd.binarycookies",
    "~/Library/Preferences/ai.perplexity.macv3.perplexityd.plist",
    "~/Library/Preferences/ai.perplexity.macv3.plist",
    "~/Library/Saved Application State/ai.perplexity.macv3.savedState",
    "~/Library/WebKit/ai.perplexity.macv3",
  ]
end
