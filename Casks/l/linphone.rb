cask "linphone" do
  version "6.1.0"
  sha256 "33be372580a2e55323dfd0a17abb12773fad58f5c1179be4f3400dd6eeaea69f"

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
