cask "soothe2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.2.2"
  sha256 "9f49f4a958bde5e2898cabbd803f2409ea5763a10e528de5fb752bd2388dddd9"

  url "https://oeksound.ams3.cdn.digitaloceanspaces.com/soothe2_v#{version.no_dots}_Mac.dmg",
      verified: "oeksound.ams3.cdn.digitaloceanspaces.com/"
  name "Soothe 2"
  desc "Dynamic resonance suppressor"
  homepage "https://oeksound.com/plugins/soothe2/"

  livecheck do
    url "https://oeksound.com/downloads/soothe2/"
    regex(/latest\sversion:\s(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :yosemite"

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
