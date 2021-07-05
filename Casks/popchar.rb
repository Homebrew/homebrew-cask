cask "popchar" do
  version "9.2"
  sha256 "6ca95b6fa6f2f58fd6a55556b415aed90404e8a3005d1d4edb58cff3af8ae63c"

  url "https://www.ergonis.com/downloads/products/popcharx/PopCharX#{version.no_dots}-Install.dmg",
      user_agent: :fake
  name "PopChar X"
  desc "Utility to display all characters of a font"
  homepage "https://www.ergonis.com/products/popcharx/"

  livecheck do
    url "https://update.ergonis.com/vck/popcharx.xml"
    regex(/<Program_Version>(\d+(?:\.\d+)*)</i)
  end

  app "PopChar.app"
end
