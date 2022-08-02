cask "openoffice" do
  version "4.1.13"

  language "en", default: true do
    sha256 "0cd80a42594f0a077d005672c72b03172cd50708cd7bc92f2a85ec791bddd86d"
    "en-US"
  end
  language "de" do
    sha256 "0301a0c988ad7b60784bc25695c22aea3f120123614c7edaeec01372ee225cca"
    "de"
  end
  language "fr" do
    sha256 "f73d6b5bd7de5dd2ccf6d7ba6f7e0c630fc289f784db5b013674df74f2c3cb69"
    "fr"
  end
  language "gl" do
    sha256 "f8e83a79533c0d7daea6e260d229153f2c3900e4e42fe7d7551810fd6fa6bd6d"
    "gl"
  end
  language "ko" do
    sha256 "84ec42454c1b05aa6965b9b933b890111b1c2edaf301ea12b67f3f357e47c981"
    "ko"
  end
  language "pt-BR" do
    sha256 "9e362976c3ad1253efad78e864c90489ab36a1b3eebd56fc95d8d774a37da6c1"
    "pt-BR"
  end
  language "pt" do
    sha256 "8d76324d39885fb1576baf8156e6bbc06f680167f6a6422bbcf07f59e340d27b"
    "pt"
  end
  language "ru" do
    sha256 "fa0961d8e4391384da584e8c378e9fe340e3c9357dc971ed74f7b85a45257f6d"
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
