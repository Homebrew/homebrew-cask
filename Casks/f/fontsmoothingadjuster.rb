cask "fontsmoothingadjuster" do
  version "2.0.0"
  sha256 "187401950b827c58262a9bb86878c5dd5820550c00ca414f971ce82837d7419f"

  url "https://font-smoothing-adjuster-updates.s3.amazonaws.com/Font+Smoothing+Adjuster+#{version}.dmg",
      verified: "font-smoothing-adjuster-updates.s3.amazonaws.com/"
  name "Font Smoothing Adjuster"
  desc "Re-enable the font smoothing controls"
  homepage "https://www.fontsmoothingadjuster.com/"

  livecheck do
    url "https://font-smoothing-adjuster-updates.s3.amazonaws.com/appcast.xml"
    regex(/Font%20Smoothing%20Adjuster%20v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Font Smoothing Adjuster.app"

  zap trash: [
    "~/Library/Application Support/com.bouncetechnologies.Font-Smoothing-Adjuster",
    "~/Library/Preferences/com.bouncetechnologies.Font-Smoothing-Adjuster.plist",
    "~/Library/Saved Application State/com.bouncetechnologies.Font-Smoothing-Adjuster.savedState",
  ]
end
