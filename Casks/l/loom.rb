cask "loom" do
  arch arm: "-arm64"

  version "0.178.2"
  sha256 arm:   "09be3dd6933e0252ab5e832397ddebadb812e9b1d7951c67fa6e3904e807cab8",
         intel: "4ff271aeb99b5bbdda366d76b67d14cf2ccfbda79fc754e4fcc5ccc8fdbd3cba"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
