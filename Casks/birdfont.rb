cask "birdfont" do
  if MacOS.version <= :el_capitan
    version "2.19.4"
    sha256 "013d9c42c2252b57079453bd27e4c18dbbc09eda55563ff1516fd079c0499f76"
  elsif MacOS.version <= :mojave
    version "4.7.13"
    sha256 "0c96e569d216076985bdb1bfb4220a81fe3d604b5cd27f66703fcc108fd18ba3"
  else
    version "4.7.14"
    sha256 "26e4ab6ebbc452c61f564fb11635e4720d6cd05eac9251caa53fbe33da9fea4e"
  end

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  appcast "https://birdfont.org/purchase.php"
  name "BirdFont"
  desc "Free font editor"
  homepage "https://birdfont.org/"

  depends_on macos: ">= :el_capitan"

  app "BirdFontNonCommercial.app"
end
