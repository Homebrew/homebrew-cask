cask "linphone" do
  version "6.2.3"
  sha256 "f0f41e0fb0559b09b0d4ab95dc94e817a1c254036689aeede02dad552805dc61"

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
