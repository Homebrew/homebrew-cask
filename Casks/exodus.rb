cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "22.8.12"
  sha256 arm:   "d2f565baa51ebf1515818f65c9377fe6c71ea922e1a8a822071536778581325b",
         intel: "ae1cf37f921e290d777fbce7a8d19539ac2810e05bda695e3f8c3e45c4938ed6"

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
