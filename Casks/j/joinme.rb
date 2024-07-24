cask "joinme" do
  version "3.23.0.15766"
  sha256 :no_check

  url "https://secure.join.me/Download.aspx?installer=mac&webdownload=true"
  name "join.me"
  desc "Online conferencing software"
  homepage "https://www.join.me/"

  deprecate! date: "2024-07-16", because: :discontinued

  app "join.me.app"

  zap trash: [
    "~/Library/Application Support/com.logmein.join.me",
    "~/Library/Application Support/join.me",
    "~/Library/Caches/com.logmein.join.me",
    "~/Library/Cookies/com.logmein.join.me.binarycookies*",
    "~/Library/Logs/join.me*",
    "~/Library/Preferences/com.logmein.join.me.plist",
    "~/Library/Saved Application State/com.logmein.join.me.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
