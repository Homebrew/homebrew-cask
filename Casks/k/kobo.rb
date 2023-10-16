cask "kobo" do
  version :latest
  sha256 :no_check

  url "https://cdn.kobo.com/downloads/desktop/kobodesktop/kobosetup.dmg",
      verified: "cdn.kobo.com"
  name "Kobo"
  homepage "https://www.kobo.com/desktop"

  livecheck do
    skip "unversioned QT application"
  end

  app "Kobo.app"
end
