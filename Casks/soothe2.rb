cask "soothe2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.3.0"
  sha256 "8cf9e5c0d5ba16594b90edf04c434e21250217bdffb5aaba9cc9565186cb8df2"

  url "https://oeksound.ams3.cdn.digitaloceanspaces.com/soothe2_v#{version.no_dots}_Mac.dmg",
      verified: "oeksound.ams3.cdn.digitaloceanspaces.com/"
  name "Soothe 2"
  desc "Dynamic resonance suppressor"
  homepage "https://oeksound.com/plugins/soothe2/"

  livecheck do
    url "https://oeksound.com/changelog/soothe2/"
    regex(/<h3>v?(\d+(?:\.\d+)+)[" <]/i)
  end

  depends_on macos: ">= :high_sierra"

  pkg "soothe2.pkg"

  uninstall pkgutil: [
    "com.oeksound.soothe2.aax",
    "com.oeksound.soothe2.au",
    "com.oeksound.soothe2.common",
    "com.oeksound.soothe2.vst",
    "com.oeksound.soothe2.vst3",
  ]

  zap trash: [
    "~/Documents/oeksound/soothe2/presets",
    "~/Library/Application Support/oeksound/soothe2/config.xml",
  ]
end
