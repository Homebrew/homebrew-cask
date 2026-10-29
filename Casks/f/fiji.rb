cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20261029-1617"
  sha256 arm:   "39766f519b75ae6b1358f8e19d4aa4e276a3b62554e4eee7462396606f31539a",
         intel: "a2af5e2ffd78cec7c34d8a8ac0ffa5ddf3dfa8630df0b9c5c1188cf27d54897f"

  url "https://downloads.imagej.net/fiji/archive/latest/#{version}/fiji-latest-macos#{arch}-jdk.zip"
  name "Fiji"
  desc "Open-source image processing package"
  homepage "https://fiji.sc/"

  livecheck do
    url "https://downloads.imagej.net/fiji/archive/latest/"
    regex(/(\d{8}-\d{4})/i)
  end

  auto_updates true
  depends_on :macos

  suite "Fiji"

  zap trash: [
    "~/Library/Preferences/sc.fiji.cellcounter.plist",
    "~/Library/Saved Application State/org.fiji.savedState",
  ]
end
