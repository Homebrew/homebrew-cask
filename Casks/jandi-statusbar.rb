cask "jandi-statusbar" do
  version "1.8"
  sha256 "d37903613a7e1f9a6c9038fc70569015154ad03a6162b5f32d995f4c7004c856"

  url "https://github.com/techinpark/Jandi/releases/download/v#{version}/jandi.dmg"
  name "jandi"
  desc "Github Contributions in your status bar"
  homepage "https://github.com/techinpark/Jandi"

  livecheck do
    url "https://github.com/techinpark/Jandi/releases"
    strategy :page_match
    regex(%r{href=.*?(\d+(?:\.\d+)+)/jandi\.dmg}i)
  end

  app "jandi.app"

  zap trash: [
    "~/Library/Caches/com.tmsae.jandi",
    "~/Library/Preferences/com.tmsae.jandi.plist",
  ]
end
