cask "birdfont" do
  if MacOS.version <= :el_capitan
    version "2.19.4"
    sha256 "013d9c42c2252b57079453bd27e4c18dbbc09eda55563ff1516fd079c0499f76"
  elsif MacOS.version <= :mojave
    version "4.6.1"
    sha256 "a76994562b6920a6685c65321a0349a637441699ba9425e5faae97b1c77799bd"
  else
    version "4.6.2"
    sha256 "2b1a9edcbcd575f81b90d1517b6a49a4a6dbb03f6fd6f7ddd647b474031db7c4"
  end

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  appcast "https://birdfont.org/purchase.php"
  name "BirdFont"
  desc "Free font editor"
  homepage "https://birdfont.org/"

  depends_on macos: ">= :el_capitan"

  app "BirdFontNonCommercial.app"
end
