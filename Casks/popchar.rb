cask "popchar" do
  version "9.1"
  sha256 "a3b463dbf383465b2b9e58882cf491763e0964813a959cf06b8bdfa17e2ebd5d"

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
