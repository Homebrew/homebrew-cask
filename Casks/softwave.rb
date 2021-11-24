cask "softwave" do
  version "0.12.1"
  sha256 :no_check

  url "https://bitbucket.org/genki_instruments/software_releases/downloads/Softwave_mac.zip",
      verified: "https://bitbucket.org/genki_instruments/software_releases/"
  name "Softwave"
  desc "Is the key that unlocks the full potential of your Wave Ring"
  homepage "https://genkiinstruments.com/products/softwave"

  livecheck do
    url "https://bitbucket.org/genki_instruments/software_releases/downloads/appcast.xml"
    strategy :page_match
    regex(/sparkle:shortVersionString="(\d+(?:\.\d+)*)" sparkle:os="macos"/i)
  end

  pkg "Softwave.pkg"

  uninstall pkgutil: [
    "com.genkiinstruments.softwave",
  ]

  zap trash: [
    "~/Library/Preferences/com.genkiinstruments.softwave.plist",
    "~/Library/Softwave",
  ]
end
