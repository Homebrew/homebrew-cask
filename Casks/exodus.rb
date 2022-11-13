cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "22.11.13"
  sha256 arm:   "3de329ae7609fd339919e70014798c40d8fd78329f47bfcc926eec741167b0c7",
         intel: "f4f279ac1dd31404bbbafa53ac149d507a2a4cfffd7852a5efff4ae63442993f"

  url "https://downloads.exodus.com/releases/exodus-#{arch}-#{version}.dmg"
  name "Exodus"
  desc "Desktop wallet for cryptocurrency assets"
  homepage "https://www.exodus.com/"

  livecheck do
    url "https://www.exodus.com/releases/"
    regex(%r{/hashes[._-]exodus[._-]?v?(\d+(?:\.\d+)+)\.txt}i)
  end

  auto_updates true

  app "Exodus.app"

  zap trash: [
    "~/Library/Application Support/Exodus",
    "~/Library/Preferences/com.electron.exodus.helper.plist",
    "~/Library/Preferences/com.electron.exodus.plist",
    "~/Library/Saved Application State/com.electron.exodus.savedState",
  ]
end
