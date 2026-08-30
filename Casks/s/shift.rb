cask "shift" do
  arch arm: "arm64", intel: "x64"

  version "9.6.8.1270"
  sha256 arm:   "1b567995c2dd75168dee38118a79ff807f7a9622c68efd34e923b9bc9862a981",
         intel: "13c234648a093c3b934d9241bd9dedc24e3225cc86b168d7c4601fb3178ba42e"

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
