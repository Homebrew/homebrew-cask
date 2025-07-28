cask "electronmail" do
  arch arm: "arm64", intel: "x64"

  version "5.3.1"
  sha256 arm:   "c9a5bb0a56c8cc54f54ca21cfdd686922f7e85a5847cac5ead2bd741b2d4803a",
         intel: "820daebdedeb507adcc7888bb79232ab60b843302ed07361aadb8c3dace78c72"

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac-#{arch}.dmg"
  name "ElectronMail"
  desc "Unofficial ProtonMail Desktop App"
  homepage "https://github.com/vladimiry/ElectronMail"

  # This is the default strategy, but we need to explicitly
  # specify it to continue checking it while it is deprecated
  livecheck do
    url :url
    strategy :git
  end

  disable! date: "2026-09-01", because: :unsigned

  depends_on macos: ">= :big_sur"

  app "ElectronMail.app"

  zap trash: [
    "~/Library/Logs/ElectronMail",
    "~/Library/Preferences/github.comvladimiryElectronMail.plist",
    "~/Library/Saved Application State/github.comvladimiryElectronMail.savedState",
  ]
end
