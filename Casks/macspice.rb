cask "macspice" do
  version "3.1.25,343"
  sha256 "61c10bf428d4d813a81d75fdc667c7839a86a01015ff35b86798650097e73558"

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
