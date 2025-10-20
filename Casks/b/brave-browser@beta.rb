cask "brave-browser@beta" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "beta-arm64", intel: "beta"

  version "1.84.124.0"
  sha256 arm:   "25483ca4e463ba0a52b9e096c2ce2a4d6ab0ce9ccb00616f46864f096b6d24b0",
         intel: "56b701b4e81666c355aeb91ee27c223694853240cc540d0ff01784551b29fd44"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.major_minor_patch.sub(".", "")}/Brave-Browser-Beta-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
  name "Brave Beta"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/download-beta/"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Browser/#{folder}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Brave Browser Beta.app"

  zap trash: [
        "~/Library/Application Support/BraveSoftware/Brave-Browser-Beta",
        "~/Library/Caches/BraveSoftware/Brave-Browser-Beta",
        "~/Library/Caches/com.brave.Browser.beta",
        "~/Library/HTTPStorages/com.brave.Browser.beta",
        "~/Library/Preferences/com.brave.Browser.beta.plist",
        "~/Library/Saved Application State/com.brave.Browser.beta.savedState",
      ],
      rmdir: [
        "~/Library/Application Support/BraveSoftware",
        "~/Library/Caches/BraveSoftware",
      ]
end
