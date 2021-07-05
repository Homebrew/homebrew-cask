cask "openoffice" do
  version "4.1.10"

  language "en", default: true do
    sha256 "0ab76da0a8b61def5eaa5d162a017cfc9dba11607dd81e138ff25a5fb503d09a"
    "en-US"
  end
  language "de" do
    sha256 "11ea257a3248800d4ebb310bc11ddec94bc308b3af498852d7f1703e21584494"
    "de"
  end
  language "fr" do
    sha256 "61dcdf07974f0cf2dbf1597fadfbc190fc14389ada6d7becf58889a9ce7c942c"
    "fr"
  end
  language "gl" do
    sha256 "245758f19f6060b98dae8fba2e8834eb0f0ff97b7438891c5203cda9b8af77d2"
    "gl"
  end
  language "ko" do
    sha256 "9697b7694a3558fd53a410821e333fe3bd324229f53c44498ee60ed7614f9fbc"
    "ko"
  end
  language "pt-BR" do
    sha256 "5b266ac10d968bc4aba20e084e89ad15145dc018b63e6becac3453387d80d69c"
    "pt-BR"
  end
  language "pt" do
    sha256 "f838f19b4d8a0a295aacd83f1569a3b2b80b5bb12439f3e383771be564c7b23f"
    "pt"
  end
  language "ru" do
    sha256 "cd8f1565a36f6d93ec9ecf1d81d33678ec24b8881a786b9982ba667c743f3ab9"
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
