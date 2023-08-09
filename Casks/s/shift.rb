cask "shift" do
  arch arm: "arm64", intel: "x64"

  version "9.0.2.956"
  sha256 arm:   "3c01cc8359893db79bb12b17c8cccc8013b6462b983c4c3effc4a6017ab9dfeb",
         intel: "e5e0cb756ce8e48187e8a7e6929c69fcf60996cfa591d9d7de8cad2dc116e0cf"

  url "https://updates.tryshift.com/v#{version.major_minor_patch}/stable/shift-v#{version}-stable-#{arch}.dmg"
  name "Shift"
  desc "Workstation to streamline your accounts, apps, and workflows"
  homepage "https://tryshift.com/"

  livecheck do
    url "https://tryshift.com/download/?platform=mac"
    regex(/href=.*?(\d+(?:[._-]\d+)+)[._-]stable.*?\.dmg/i)
  end

  app "Shift.app"

  zap trash: [
    "~/Library/Application Support/.Shift",
    "~/Library/Application Support/Shift",
    "~/Library/Caches/com.rdbrck.shift.ShipIt",
    "~/Library/Caches/com.rdbrck.shift",
    "~/Library/HTTPStorages/com.rdbrck.shift",
    "~/Library/Preferences/com.rdbrck.shift.plist",
    "~/Library/Saved Application State/com.rdbrck.shift.savedState",
  ]
end
