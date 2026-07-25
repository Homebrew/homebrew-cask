cask "shift" do
  arch arm: "arm64", intel: "x64"

  version "9.6.7.1268"
  sha256 arm:   "8a70d9e5a86511d5ac025e582faf18a506f38117c48fa4c337de3f5b3c97a40a",
         intel: "5c5c88df0ff9713dc730541a67501de556cbac2ac6baf3ce6cddeec5142a1a06"

  url "https://updates.tryshift.com/v#{version.major_minor_patch}/stable/shift-v#{version}-stable-#{arch}.dmg",
      verified: "updates.tryshift.com/"
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

  depends_on macos: :big_sur

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
