cask "brave-browser@beta" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "beta-arm64", intel: "beta"

  version "1.69.138.0"
  sha256 arm:   "5480f61d7e3d14b40dc0f5c137b969a2cc6d5b0136eb52fecc0f228843a1bd1b",
         intel: "9226bfcd37479c231ac2992ab091c3ffc7d6c3394f5394f8429030f8682d7956"

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
  depends_on macos: ">= :catalina"

  app "Brave Browser Beta.app"

  zap trash: [
    "~/Library/Application Support/brave",
    "~/Library/Preferences/com.electron.brave.plist",
    "~/Library/Saved Application State/com.electron.brave.savedState",
  ]
end
