cask "popchar" do
  version "9.5"
  sha256 "d19047eb03c2c46c4f4f3fad4345839b0e9609d955a30df948700c24013bc20f"

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
