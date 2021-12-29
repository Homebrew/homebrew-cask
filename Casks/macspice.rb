cask "macspice" do
  version "3.1.25,343"
  sha256 :no_check # required as upstream package is updated in place

  url "https://www.macspice.com/mirror/binaries/v#{version.csv.first}/MacSpice3f5.dmg",
      user_agent: :fake
  name "MacSpice"
  desc "Electronic circuit simulator"
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
