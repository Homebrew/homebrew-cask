cask "popchar" do
  version "10.5"
  sha256 "c9c5fbc5cca8250445232d6118b79ae64d188b30a2f7bcf13f765f13f1825a92"

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
    "~/Library/HTTPStorages/com.macility.popchar3",
    "~/Library/Preferences/com.macility.popchar3.plist",
  ]
end
