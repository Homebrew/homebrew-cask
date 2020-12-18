cask "popchar" do
  version "9.0"
  sha256 "825ba2272eab6be3593d200c696e676dd5e25da91f9c913ac30052f09bcb0aff"

  url "https://www.ergonis.com/downloads/products/popcharx/PopCharX#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast "https://update.ergonis.com/vck/popcharx.xml"
  name "PopChar X"
  desc "Utility to display all characters of a font"
  homepage "https://www.ergonis.com/products/popcharx/"

  app "PopChar.app"
end
