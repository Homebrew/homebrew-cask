cask "lastpass" do
  version "4.110.0"
  sha256 :no_check

  url "https://download.cloud.lastpass.com/mac/LastPass.dmg"
  name "LastPass"
  desc "Password manager"
  homepage "https://www.lastpass.com/"

  livecheck do
    url "https://download.cloud.lastpass.com/mac/AppCast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "LastPass.app"

  zap trash: [
    "~/Library/Application Scripts/com.lastpass.lastpassmacdesktop.safariext",
    "~/Library/Application Support/com.lastpass.lastpassmacdesktop",
    "~/Library/Caches/com.lastpass.lastpassmacdesktop",
    "~/Library/Containers/com.lastpass.LastPass",
    "~/Library/Containers/com.lastpass.lastpassmacdesktop.safariext",
    "~/Library/Cookies/com.lastpass.lastpassmacdesktop.binarycookies",
    "~/Library/Preferences/com.lastpass.lastpassmacdesktop.plist",
    "~/Library/WebKit/com.lastpass.lastpassmacdesktop",
  ]
end
