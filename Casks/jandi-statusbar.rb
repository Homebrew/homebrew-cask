cask "jandi-statusbar" do
  version "1.7"
  sha256 "8814c0ed06236ea416bf6c439a6c8774e063f2627d94c7badd65f37efc63cd5c"

  url "https://github.com/techinpark/Jandi/releases/download/v#{version}/jandi.dmg"
  name "jandi"
  desc "Github Contributions in your status bar"
  homepage "https://github.com/techinpark/Jandi"

  app "jandi.app"

  zap trash: [
    "~/Library/Caches/com.tmsae.jandi",
    "~/Library/Preferences/com.tmsae.jandi.plist",
  ]
end
