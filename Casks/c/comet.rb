cask "comet" do
  version :latest
  sha256 :no_check

  url "https://www.perplexity.ai/rest/browser/download?channel=stable&platform=mac_arm64",
      verified: "perplexity.ai/"
  name "Comet"
  desc "Web browser with integrated AI assistant"
  homepage "https://www.perplexity.ai/comet"

  livecheck do
    skip "Upstream provides no versioned download artifact"
  end

  auto_updates true
  depends_on arch: :arm64

  app "Comet.app"

  zap trash: [
    "~/Library/Application Support/ai.perplexity.comet",
    "~/Library/Caches/ai.perplexity.comet",
    "~/Library/Preferences/ai.perplexity.comet.plist",
    "~/Library/Saved Application State/ai.perplexity.comet.savedState",
    "~/Library/WebKit/ai.perplexity.comet",
  ]
end
