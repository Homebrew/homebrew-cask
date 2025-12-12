cask "swiftdialog-dmg" do
  version "2.5.6"
  sha256 "53f143b04de7333831a14f457161826e9f72571524329dadf5457ac2aa496bdd"

  url "https://github.com/swiftDialog/swiftDialog/releases/download/v#{version}/swiftDialog.dmg",
      verified: "github.com/swiftDialog/swiftDialog/"
  name "swiftDialog App Bundle"
  desc "Admin utility that presents custom dialogs or messages from shell scripts"
  homepage "https://swiftdialog.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Dialog.app"

  zap trash: "~/Library/Preferences/au.csiro.dialog.plist"
end
