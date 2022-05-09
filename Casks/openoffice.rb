cask "openoffice" do
  version "4.1.12"

  language "en", default: true do
    sha256 "3b935a956d9e8149c94978ad8f0f491f006caddbb17e08d92b77448b77e40d4b"
    "en-US"
  end
  language "de" do
    sha256 "c06b3797e8e8dabc5515500df0076605b85beca9292ce356528e64b2a16bac51"
    "de"
  end
  language "fr" do
    sha256 "9187fe7a056816c306e017940cb7a862dde359571415f3bd184ce1356eace9a0"
    "fr"
  end
  language "gl" do
    sha256 "e35fd363b9a24f4c172f5e9fba2e0cb3cd36228c3bd1ccae671303783085d5d9"
    "gl"
  end
  language "ko" do
    sha256 "1d217e9fad0c64f698e491d017dd4be6ebe6aa99aa27260b736bd39871d0db9a"
    "ko"
  end
  language "pt-BR" do
    sha256 "cc2c12a38a8090eb03d246a2c3068559311c186bd3751003ea9c6e275a056d4f"
    "pt-BR"
  end
  language "pt" do
    sha256 "aa049e3b0ed5640e28b7268597ee17637c3b2fa0a7bd5a5475d5849e4c2635a1"
    "pt"
  end
  language "ru" do
    sha256 "ef56b00c916aa3c6af868c85bd7465221dfad63326b6744390b2339e8be7a9f4"
    "ru"
  end

  url "https://downloads.sourceforge.net/openofficeorg.mirror/Apache_OpenOffice_#{version}_MacOS_x86-64_install_#{language}.dmg",
      verified: "sourceforge.net/openofficeorg.mirror/"
  name "Apache OpenOffice"
  desc "Free and open-source productivity suite"
  homepage "https://www.openoffice.org/"

  app "OpenOffice.app"

  zap trash: "~/Library/Application Support/OpenOffice"
end
