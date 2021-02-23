cask "font-smoothing-adjuster" do
  version "1.2"
  sha256 "c730138de142e2b3228298ac5f51bb90b880eb10aa2161f29a6b5ce327d7695a"

  url "https://font-smoothing-adjuster-updates.s3.eu-west-2.amazonaws.com/Font+Smoothing+Adjuster+#{version}.dmg",
      verified: "font-smoothing-adjuster-updates.s3.eu-west-2.amazonaws.com"
  appcast "https://font-smoothing-adjuster-updates.s3.eu-west-2.amazonaws.com/appcast.xml"
  name "Font Smoothing Adjuster"
  desc "Re-enable the font smoothing controls"
  homepage "https://www.fontsmoothingadjuster.com/"

  app "Font Smoothing Adjuster.app"

  zap trash: [
    "~/Library/Preferences/com.bouncetechnologies.Font-Smoothing-Adjuster.plist",
    "~/Library/Application Support/com.bouncetechnologies.Font-Smoothing-Adjuster",
    "~/Library/Saved Application State/com.bouncetechnologies.Font-Smoothing-Adjuster.savedState",
  ]
end
