cask "openoffice" do
  version "4.1.14"

  language "en", default: true do
    sha256 "68f6cbdca5e6551983742115458de0f0edbd55f2b6fe962bbea677c9dfb90a21"
    "en-US"
  end
  language "de" do
    sha256 "75de7259ed8dc584aac4ce88862e7b1512f130e9cbd574a8ddf6369933b197af"
    "de"
  end
  language "fr" do
    sha256 "52f5b7ad5967aa52404181abfffd58f4354b82bdcd3897d4b69854bf2357b491"
    "fr"
  end
  language "gl" do
    sha256 "4bec76e4885d3bc88954a2ddd289ae62f389d16b712deca3c43b25effd3ca098"
    "gl"
  end
  language "ko" do
    sha256 "ffac4ffa746e0ae677f8fa34e5f4bc70964c7160e280af6a89490a224e3e926e"
    "ko"
  end
  language "pt-BR" do
    sha256 "43badf2fb6fe2e975b99ff27f7e296843d3284e28c0f8278aba9bf7afb6d1200"
    "pt-BR"
  end
  language "pt" do
    sha256 "61ca8ef40acc72a118ed3ee30fc0a4179f3c464f1c961ab8af77cf8743b285f9"
    "pt"
  end
  language "ru" do
    sha256 "fb7e2fcb6552ec6f3a0fa865c4ad768d278071284c512f3943766a0a905ddefd"
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
