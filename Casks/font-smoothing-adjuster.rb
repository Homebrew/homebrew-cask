cask "font-smoothing-adjuster" do
  version "1.2.1"
  sha256 "f0f02948be588bdff455195baeb8f72c0c45977775ab936644e8bf9053c316a6"

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
