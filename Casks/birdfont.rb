cask "birdfont" do
  if MacOS.version <= :el_capitan
    version "2.19.4"
    sha256 "013d9c42c2252b57079453bd27e4c18dbbc09eda55563ff1516fd079c0499f76"
  elsif MacOS.version <= :mojave
    version "4.8.1"
    sha256 "a970a24b48aeff5a93152ef46c6258920ab6884ca4192444aaf2cfcd894d6376"
  else
    version "4.8.0"
    sha256 "d70ae1028772233f26a52075a0104328394114f7c2e2bc257ec4dede818f94df"
  end

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  appcast "https://birdfont.org/purchase.php"
  name "BirdFont"
  desc "Free font editor"
  homepage "https://birdfont.org/"

  depends_on macos: ">= :el_capitan"

  app "BirdFontNonCommercial.app"
end
