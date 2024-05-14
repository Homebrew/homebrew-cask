cask "brave-browser" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "stable-arm64", intel: "stable"

  version "1.65.133.0"
  sha256 arm:   "e48d41579e22255752f06ba3d4ce942fb707c2e01c6c9fe82aba7fcac60456cd",
         intel: "a3e893fa7b78146a0fe3a9df3db0c2b5eb241b8d996c2f4fcda2ff65f1c1d66e"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.major_minor_patch.sub(".", "")}/Brave-Browser-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
  name "Brave"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Browser/#{folder}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Brave Browser.app"

  zap trash: [
    "~/Library/Application Support/BraveSoftware",
    "~/Library/Caches/BraveSoftware",
    "~/Library/Caches/com.brave.Browser",
    "~/Library/HTTPStorages/com.brave.Browser",
    "~/Library/Preferences/com.brave.Browser.plist",
    "~/Library/Saved Application State/com.brave.Browser.savedState",
  ]
end
