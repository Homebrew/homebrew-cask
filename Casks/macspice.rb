cask "macspice" do
  version "3.1.25,343"
  sha256 "22f82c32b6e79916b123a7d1f5ded71a9a30cffc5ab63262b43a0d11db3c45f9"

  url "https://www.macspice.com/binaries/v#{version.csv.first}/MacSpice3f5.dmg"
  name "MacSpice"
  desc "Electronic circuit simulator"
  homepage "https://www.macspice.com/"

  livecheck do
    url "https://www.macspice.com/AppCast-v2.xml"
    strategy :sparkle
  end

  app "MacSpice.app"

  zap trash: [
    "~/Documents/MacSpice",
    "~/Library/Application Support/MacSpice",
    "~/Library/Caches/com.apple.helpd/Generated/uk.co.cdhw.MacSpice.help*#{version.csv.first}",
    "~/Library/Preferences/uk.co.cdhw.MacSpice.plist",
    "~/Library/Saved Application State/uk.co.cdhw.MacSpice.savedState",
  ]
end
