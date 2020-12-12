cask "openoffice" do
  version "4.1.8"

  language "en", default: true do
    sha256 "336b02c6bdf943be161f5fa037ee8a61bd1226f49b57c391dacce1dacbf3db33"
    "en-US"
  end
  language "fr" do
    sha256 "7c75c473be13dcc1325ae1afed2cde2ee3d005694df4c8de382d5512ae1c71c7"
    "fr"
  end
  language "gl" do
    sha256 "b7106941323847ab3b8cf0a32b1ae72100629315d382e1a5da54a829626a9598"
    "gl"
  end
  language "ko" do
    sha256 "c540cad46a4ef1d7500e573a8eef6aae462621bee033a1c6f0d6b7d052e50246"
    "ko"
  end
  language "pt-BR" do
    sha256 "7fb6d5f5192073967be520429c226e84877243fbc94f851ea72377696dd3d2cd"
    "pt-BR"
  end
  language "pt" do
    sha256 "1fba9cf39ad79f7c054fae5ab0a0520a454958e45f4d408d930110494ab21670"
    "pt"
  end
  language "ru" do
    sha256 "0d1040d84f6f9fb46590fe07d75c9c7d8f6c616121f15e3985e9a85b32caaef3"
    "ru"
  end

  url "https://downloads.sourceforge.net/openofficeorg.mirror/Apache_OpenOffice_#{version}_MacOS_x86-64_install_#{language}.dmg",
      verified: "sourceforge.net/openofficeorg.mirror/"
  appcast "https://www.openoffice.org/download/index.html"
  name "Apache OpenOffice"
  desc "Free and open-source productivity suite"
  homepage "https://www.openoffice.org/"

  app "OpenOffice.app"

  zap trash: "~/Library/Application Support/OpenOffice"
end
