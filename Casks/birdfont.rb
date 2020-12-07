cask "birdfont" do
  if MacOS.version <= :mojave
    version "4.8.1"
    sha256 "a970a24b48aeff5a93152ef46c6258920ab6884ca4192444aaf2cfcd894d6376"
  elsif MacOS.version <= :catalina
    version "4.8.0"
    sha256 "d70ae1028772233f26a52075a0104328394114f7c2e2bc257ec4dede818f94df"
  else
    version "4.8.7"
    sha256 "97113180a24c72a340fce0911d456ebc75be1cf7f35d55dc9ba21655320d9166"
  end

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  appcast "https://birdfont.org/purchase.php"
  name "BirdFont"
  desc "Free font editor"
  homepage "https://birdfont.org/"

  depends_on macos: ">= :el_capitan"

  app "BirdFontNonCommercial.app"
end
