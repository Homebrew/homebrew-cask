cask "linphone" do
  version "6.1.2"
  sha256 "d7a7a0f00de836b98ad1eccc583570985a8de5ce942fc1934c730cab8bfcceed"

  url "https://download.linphone.org/releases/macosx/app/Linphone-#{version}-mac.dmg"
  name "Linphone"
  desc "Software for communication systems developers"
  homepage "https://www.linphone.org/"

  livecheck do
    url "https://download.linphone.org/releases/macosx/app/"
    regex(/Linphone[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  depends_on macos: ">= :monterey"

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
