cask "kobo" do
  version :latest
  sha256 :no_check

  url "https://kbdownload1-a.akamaihd.net/desktop/kobodesktop/kobosetup.dmg",
      verified: "kbdownload1-a.akamaihd.net/"
  name "Kobo"
  homepage "https://www.kobo.com/desktop"

  livecheck do
    skip "unversioned QT application"
  end

  app "Kobo.app"
end
