cask "shift" do
  arch arm: "arm64", intel: "x64"

  version "9.6.9.1283"
  sha256 arm:   "ca34a501b4b5eaa4cbf50065ce28b378d0a09e0695ff220642a5053bfc184ead",
         intel: "d08eaee10e9e89971efedb83b7b78586768e55a65306fca237cc64e8bff93cd3"

  url "https://updates.tryshift.com/v#{version.major_minor_patch}/stable/shift-v#{version}-stable-#{arch}.dmg"
  name "Shift"
  desc "Workstation to streamline your accounts, apps, and workflows"
  homepage "https://shift.com/"

  livecheck do
    url "https://updates.tryshift.com/appcast/stable/mac-#{arch}.xml"
    regex(/shift[._-]v?(\d+(?:\.\d+)+)[._-]stable[._-]#{arch}\.dmg/i)
    strategy :sparkle do |item, regex|
      item.url[regex, 1]
    end
  end

  depends_on :macos

  app "Shift.app"

  zap trash: [
    "~/Library/Application Support/.Shift",
    "~/Library/Application Support/Shift",
    "~/Library/Caches/com.rdbrck.shift",
    "~/Library/Caches/com.rdbrck.shift.ShipIt",
    "~/Library/HTTPStorages/com.rdbrck.shift",
    "~/Library/Preferences/com.rdbrck.shift.plist",
    "~/Library/Saved Application State/com.rdbrck.shift.savedState",
  ]
end
