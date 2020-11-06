cask "openoffice" do
  version "4.1.7"

  language "en", default: true do
    sha256 "615d6fa38ef78e99e30f515ce3f61fd9e228408a425c91afc5e587d662e18f99"
    "en-US"
  end
  language "fr" do
    sha256 "1f583ce02d3521a522a10d057c3f02df4e2db97159c5b3660864b707ff246da9"
    "fr"
  end
  language "gl" do
    sha256 "9677427e94177bd63581e6d6e05f4577218be99b8f77ca9400084611e7301c81"
    "gl"
  end
  language "ko" do
    sha256 "fbac79978daa873c6d60592221d7f8f1b3d9bf50f6cabfd1e8396495ee035fb4"
    "ko"
  end
  language "pt-BR" do
    sha256 "492414f99543ee3678e5616d60af324923090228896c88020b05bf87c5c9b8bc"
    "pt-BR"
  end
  language "pt" do
    sha256 "8f2f2370e704a20a2e14f36bcc01d88f40067e3e6e8132efa93add8bfb6ff400"
    "pt"
  end
  language "ru" do
    sha256 "fda1e39361fa34ff4c015d10866ab79c1e665bddf297af6c163022b302332e22"
    "ru"
  end

  # sourceforge.net/openofficeorg.mirror/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/openofficeorg.mirror/Apache_OpenOffice_#{version}_MacOS_x86-64_install_#{language}.dmg"
  appcast "https://sourceforge.net/projects/openofficeorg.mirror/rss"
  name "Apache OpenOffice"
  desc "Free and open-source productivity suite"
  homepage "https://www.openoffice.org/"

  app "OpenOffice.app"

  zap trash: "~/Library/Application Support/OpenOffice"
end
