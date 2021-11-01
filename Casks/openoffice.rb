cask "openoffice" do
  version "4.1.11"

  language "en", default: true do
    sha256 "f3d01d6b7dd959ca6cc039f4bacb6ac03efa4773f6b404862a1cd14f0d75b17f"
    "en-US"
  end
  language "de" do
    sha256 "6d83301c485fe3afc2dc80a26f3b69f9e2124610f9ec1fcf7386acc6c3aee43e"
    "de"
  end
  language "fr" do
    sha256 "2e461e33fdd31aa0ec061cc34f20887800be80e4b7532e64919e56c60466f593"
    "fr"
  end
  language "gl" do
    sha256 "fac37554c6f6a8253d8b1a2b957a71e9905f98cf58b0d509a87a81ce3994a0b4"
    "gl"
  end
  language "ko" do
    sha256 "31bd6b6302499a05caef6bcc61cd10c7972ff3a4161165938ddf2809fad8e2d4"
    "ko"
  end
  language "pt-BR" do
    sha256 "d1242b0e7c0c3fdf276c19e76737be58082fac64988f55e4695731cc7c3380f6"
    "pt-BR"
  end
  language "pt" do
    sha256 "78dc3248959b4d1190aa3809a09695fa902658a90b351bbc57344d07b3d95f35"
    "pt"
  end
  language "ru" do
    sha256 "059827ed51049af85f38ebafabe33ce8ad51b10c702b9d58d669e5fad70da03f"
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
