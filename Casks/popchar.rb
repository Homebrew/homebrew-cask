cask "popchar" do
  version "9.4"
  sha256 "bbb78d35bbd307fd547391cbcc2aff79e01d649ccb3d91445b4394b86cd0170e"

  url "https://www.ergonis.com/downloads/products/popcharx/PopCharX#{version.no_dots}-Install.dmg",
      user_agent: :fake
  name "PopChar X"
  desc "Utility to display all characters of a font"
  homepage "https://www.ergonis.com/products/popcharx/"

  livecheck do
    url "https://update.ergonis.com/vck/popcharx.xml"
    regex(/<Program_Version>(\d+(?:\.\d+)+)</i)
  end

  app "PopChar.app"

  zap trash: [
    "~/Library/Application Support/PopChar",
    "~/Library/Caches/com.macility.popchar3",
    "~/Library/Preferences/com.macility.popchar3.plist",
  ]
end
