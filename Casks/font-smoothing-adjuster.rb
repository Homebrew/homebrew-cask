cask "font-smoothing-adjuster" do
  version "1.3"
  sha256 "05d11d1ed5edc93bc31022ece112734349f7359bb895fb08f8d45c512ae5e694"

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
