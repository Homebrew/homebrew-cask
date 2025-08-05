cask "openoffice" do
  version "4.1.15"

  language "en", default: true do
    sha256 "888a1d043b3c81f701bacd63b7fe3921505623bca28a529f3210f2ea61cfeb7b"
    "en-US"
  end
  language "de" do
    sha256 "11f294fb5538544d53bfa96c621b95676ebaca79714dd5478b18b33137ef6d63"
    "de"
  end
  language "fr" do
    sha256 "eff089fc26053e4d8060e1a5763f68f38672304017494110c95448f9ed548ba9"
    "fr"
  end
  language "gl" do
    sha256 "dad0191236c0d238bf1579b57a4f77c2899467c833b08c505684f4f1a3b9ea1a"
    "gl"
  end
  language "ko" do
    sha256 "f09926f878b24757e2521fc39bcada468576e1494492c4e8b9e51498649358f4"
    "ko"
  end
  language "pt-BR" do
    sha256 "cc60a0e17fec6c7f263edfd129494c6078e08218d423ffe63f3397c7ecd07261"
    "pt-BR"
  end
  language "pt" do
    sha256 "837baaced1f34a40001b66ac64f86868087fcff313b0fb53cc8a762ec07f63a1"
    "pt"
  end
  language "ru" do
    sha256 "bbf4a4457392f22daaabab4555d54cb9822ebe4ad2b27cdbad986bf2a0b949c2"
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
