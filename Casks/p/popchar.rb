cask "popchar" do
  version "10.1"
  sha256 "a3cb1797dca9e178fcbf0077d2266b8fa93b92089f2dc88dca99eab98538aed0"

  url "https://www.ergonis.com/downloads/products/popcharx/PopCharX#{version.no_dots}-Install.dmg",
      user_agent: :fake
  name "PopChar X"
  desc "Utility to display all characters of a font"
  homepage "https://www.ergonis.com/products/popcharx/"

  livecheck do
    url "https://update.ergonis.com/vck/popcharx.xml"
    regex(/<Program_Version>(\d+(?:\.\d+)+)</i)
  end

  depends_on macos: ">= :high_sierra"

  app "PopChar.app"

  zap trash: [
    "~/Library/Application Support/PopChar",
    "~/Library/Caches/com.macility.popchar3",
    "~/Library/Preferences/com.macility.popchar3.plist",
  ]
end
