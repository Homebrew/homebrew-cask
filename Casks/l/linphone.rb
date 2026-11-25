cask "linphone" do
  version "6.2.5"
  sha256 "71c66dc98d1fb6b66d995bc70e3bb3946ac2aaa46717a0ead2c3f1ea7866cc1b"

  url "https://download.linphone.org/releases/macosx/app/Linphone-#{version}-mac.dmg"
  name "Linphone"
  desc "Software for communication systems developers"
  homepage "https://www.linphone.org/"

  livecheck do
    url "https://download.linphone.org/releases/macosx/app/"
    regex(/Linphone[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  depends_on macos: :monterey

  app "Linphone.app"

  zap trash: [
    "~/Documents/linphone",
    "~/Library/Application Support/linphone",
    "~/Library/Preferences/com.belledonnecommunications.linphone.plist",
    "~/Library/Preferences/com.linphone.linphone.plist",
    "~/Library/Preferences/linphone",
    "~/Library/Saved Application State/com.belledonnecommunications.linphone.savedState",
  ]
end
