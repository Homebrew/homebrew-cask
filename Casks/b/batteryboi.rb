cask "batteryboi" do
  version "2.2.2"
  sha256 :no_check

  url "https://github.com/thebarbican19/BatteryBoi/releases/download/Version2.2.2%2318/BatteryBoi-V2.2.0.dmg", verified: "github.com/"
  name "batteryboi"
  desc "Better battery indicator for the menu bar"
  homepage "https://batteryboi.ovatar.io/"

  depends_on macos: ">= :big_sur"

  app "BatteryBoi.app"
end
