cask "shift" do
  arch arm: "arm64", intel: "x64"

  version "8.5.6.863"
  sha256 arm:   "ae6a8eba7e47e6c7ac09c8bdd55f53eb3519634cffee32773b3dee5f131de856",
         intel: "7feeb1984b9d616d1de635748bfbb01aeb268b73e6cc3a038a94c9a086fbdc6a"

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
