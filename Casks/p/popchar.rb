cask "popchar" do
  version "10.4"
  sha256 "084c995b640636fcda912107157b6f455857e52ecd94539ede5670896e9606ff"

  url "https://www.ergonis.com/downloads/products/popcharx/PopCharX#{version.no_dots}-Install.dmg",
      user_agent: :fake
  name "PopChar X"
  desc "Utility to display all characters of a font"
  homepage "https://www.ergonis.com/products/popcharx/"

  livecheck do
    url "https://update.ergonis.com/vck/popcharx.xml"
    strategy :xml do |xml|
      xml.elements["//Program_Info/Program_Version"]&.text&.strip
    end
  end

  depends_on macos: ">= :monterey"

  app "PopChar.app"

  zap trash: [
    "~/Library/Application Support/PopChar",
    "~/Library/Caches/com.macility.popchar3",
    "~/Library/Preferences/com.macility.popchar3.plist",
  ]
end
