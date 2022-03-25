cask "font-smoothing-adjuster" do
  version "1.3.1"
  sha256 "87d501fc56383417ec1ec7862e714fdbc5c04173b7e48c4246b54b98781f6ec4"

  url "https://font-smoothing-adjuster-updates.s3.eu-west-2.amazonaws.com/Font+Smoothing+Adjuster+#{version}.dmg",
      verified: "font-smoothing-adjuster-updates.s3.eu-west-2.amazonaws.com"
  name "Font Smoothing Adjuster"
  desc "Re-enable the font smoothing controls"
  homepage "https://www.fontsmoothingadjuster.com/"

  livecheck do
    url "https://font-smoothing-adjuster-updates.s3.eu-west-2.amazonaws.com/appcast.xml"
    regex(/Font%20Smoothing%20Adjuster%20v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Font Smoothing Adjuster.app"

  zap trash: [
    "~/Library/Application Support/com.bouncetechnologies.Font-Smoothing-Adjuster",
    "~/Library/Preferences/com.bouncetechnologies.Font-Smoothing-Adjuster.plist",
    "~/Library/Saved Application State/com.bouncetechnologies.Font-Smoothing-Adjuster.savedState",
  ]
end
