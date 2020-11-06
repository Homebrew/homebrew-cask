cask "popchar" do
  version "8.10"
  sha256 "cac9830de0ac9d1fa01b44e91315be2c60d68978b61968c3a8b9211e983e1f4b"

  url "https://www.ergonis.com/downloads/products/popcharx/PopCharX#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast "https://update.ergonis.com/vck/popcharx.xml"
  name "PopChar X"
  desc "Utility to display all characters of a font"
  homepage "https://www.ergonis.com/products/popcharx/"

  app "PopChar.app"
end
