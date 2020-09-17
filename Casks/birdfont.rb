cask "birdfont" do
  if MacOS.version <= :el_capitan
    version "2.19.4"
    sha256 "013d9c42c2252b57079453bd27e4c18dbbc09eda55563ff1516fd079c0499f76"
  elsif MacOS.version <= :mojave
    version "4.7.11"
    sha256 "34f83d5e0a44e30b61d5570c3802f74a04dc174143dd1e30fe55db750665ed65"
  else
    version "4.7.12"
    sha256 "c461f033cf2852994666e301f3572cb49d308be4ca3662a818049000371f4d69"
  end

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  appcast "https://birdfont.org/purchase.php"
  name "BirdFont"
  desc "Free font editor"
  homepage "https://birdfont.org/"

  depends_on macos: ">= :el_capitan"

  app "BirdFontNonCommercial.app"
end
