cask "macspice" do
  version "3.1.24,341"
  sha256 "486baee366773f3589c870d9294e1028c118e29f9bf4dc824322e37f2782475f"

  url "https://www.macspice.com/mirror/binaries/v#{version.before_comma}/MacSpice3f5.dmg"
  name "MacSpice"
  homepage "https://www.macspice.com/"

  livecheck do
    url "https://www.macspice.com/AppCast-v2.xml"
    strategy :sparkle
  end

  app "MacSpice.app"

  zap trash: [
    "~/Library/Application Support/MacSpice",
    "~/Library/Preferences/uk.co.cdhw.MacSpice.plist",
    "~/Library/Saved Application State/uk.co.cdhw.MacSpice.savedState",
  ]
end
