cask "linphone" do
  version "5.1.2"
  sha256 "83880a91eb06d7270482136ba2b1c36cb07a53698724260ccaf3a01f4e3ca09a"

  url "https://download.linphone.org/releases/macosx/app/Linphone-#{version}-mac.dmg"
  name "Linphone"
  desc "Software for communication systems developers"
  homepage "https://www.linphone.org/"

  livecheck do
    url "https://download.linphone.org/releases/macosx/app/"
    regex(/Linphone[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

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
