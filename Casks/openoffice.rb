cask "openoffice" do
  version "4.1.9"

  language "en", default: true do
    sha256 "332132fa734020b048d677f615fd648a4437bc484612866394a5b045f56f2c41"
    "en-US"
  end
  language "de" do
    sha256 "ac44bb2d186d20450f38e0d14d9982b801d37c016abb43dd619ab3bedd211d61"
    "de"
  end
  language "fr" do
    sha256 "c293bf44507a75eed40eff0207180cbca3213cd2e01afe1ed7fbf6f1c956c2a3"
    "fr"
  end
  language "gl" do
    sha256 "10f215c03f56411593b61b2d351720be92381687059d80b502926240abfb6ee9"
    "gl"
  end
  language "ko" do
    sha256 "598c8bfe7d11c713fa1385de8dbc1eb115f62c00c6a7a47cf777970ee0bb439e"
    "ko"
  end
  language "pt-BR" do
    sha256 "41476ad58975415629a33d20411e1d684a512beb48d1e8ed823d4fe027723637"
    "pt-BR"
  end
  language "pt" do
    sha256 "84d9cd72cde12bdc89e33247c614b5da3659a2e3475f5f635bb8795bc3a8a8a4"
    "pt"
  end
  language "ru" do
    sha256 "3fa71987c98c08824db1ee88fde94d7f0e802467825597b275c368e3aa6d1891"
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
