cask "comet" do
  version "143.0.7499.33687"
  sha256 :no_check

  on_arm do
    url "https://www.perplexity.ai/rest/browser/download?channel=stable&platform=mac_arm64",
        verified: "perplexity.ai/"
  end
  on_intel do
    url "https://www.perplexity.ai/rest/browser/download?channel=stable&platform=mac_x64",
        verified: "perplexity.ai/"
  end

  name "Comet"
  desc "Web browser with integrated AI assistant"
  homepage "https://www.perplexity.ai/comet"

  livecheck do
    url "https://www.perplexity.ai/rest/browser/download?channel=stable&platform=mac_arm64"
    strategy :header_match do |headers|
      match = headers["location"]&.match(%r{/(\d+(?:\.\d+)+)/comet_latest\.dmg}i)
      match&.captures&.first
    end
  end

  auto_updates true

  app "Comet.app"

  zap trash: [
    "~/Library/Application Support/ai.perplexity.comet",
    "~/Library/Caches/ai.perplexity.comet",
    "~/Library/Preferences/ai.perplexity.comet.plist",
    "~/Library/Saved Application State/ai.perplexity.comet.savedState",
    "~/Library/WebKit/ai.perplexity.comet",
  ]
end
