cask "birdfont" do
  if MacOS.version <= :el_capitan
    version "2.19.4"
    sha256 "013d9c42c2252b57079453bd27e4c18dbbc09eda55563ff1516fd079c0499f76"
  elsif MacOS.version <= :mojave
    version "4.7.17"
    sha256 "de21f2a7eb346c3054f9a0597f7fdae6935176247694fd33257fa8c119f2b8c2"
  else
    version "4.7.18"
    sha256 "ef4250f02ac9d9a0aab37c1f410cb88508da1958041f4808e760ac7891752f28"
  end

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  appcast "https://birdfont.org/purchase.php"
  name "BirdFont"
  desc "Free font editor"
  homepage "https://birdfont.org/"

  depends_on macos: ">= :el_capitan"

  app "BirdFontNonCommercial.app"
end
