cask "openoffice" do
  version "4.1.16"

  language "en", default: true do
    sha256 "01a1fa4193dd846ef72a29e33578eac406655a213dd8262363434cd6d5b901fa"
    "en-US"
  end
  language "de" do
    sha256 "c18f6628aaa49f5fdf9daf17ada213754b67de5619a7c35f6b9570b6e275f521"
    "de"
  end
  language "fr" do
    sha256 "d4a330778c4bebf8468377b4260b03bc0332bc6bd6097c3f3e59d5a98730fc98"
    "fr"
  end
  language "gl" do
    sha256 "f97275e33f42a6073bd3120e7e9726f10b32959afab03f19bae9104edd676796"
    "gl"
  end
  language "ko" do
    sha256 "45f5cbc70ff7a39f9117d04c32be6afdefdc88621897afc00ae46605b90035c2"
    "ko"
  end
  language "pt-BR" do
    sha256 "1882f1f16c392b4f1c3e8223201870752072f08d514c1c5f8a88b827da036588"
    "pt-BR"
  end
  language "pt" do
    sha256 "3002baf0feae7b91446ce39006225f601fff6814214139563074f234ff39ef6d"
    "pt"
  end
  language "ru" do
    sha256 "6ec1df9abf9b850bbd2cdfe8fd662bb52276343952ddedd7f7933ebfadfc6df2"
    "ru"
  end

  url "https://downloads.sourceforge.net/openofficeorg.mirror/Apache_OpenOffice_#{version}_MacOS_x86-64_install_#{language}.dmg",
      verified: "sourceforge.net/openofficeorg.mirror/"
  name "Apache OpenOffice"
  desc "Free and open-source productivity suite"
  homepage "https://www.openoffice.org/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "OpenOffice.app"

  zap trash: "~/Library/Application Support/OpenOffice"

  caveats do
    requires_rosetta
  end
end
