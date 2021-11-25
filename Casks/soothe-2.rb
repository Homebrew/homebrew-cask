cask "soothe-2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.2.2"
  sha256 "9f49f4a958bde5e2898cabbd803f2409ea5763a10e528de5fb752bd2388dddd9"

  url "https://oeksound.ams3.cdn.digitaloceanspaces.com/soothe2_v#{version.delete(".")}_Mac.dmg",
      verified: "oeksound.ams3.cdn.digitaloceanspaces.com/"
  name "Soothe 2"
  desc "Dynamic resonance suppressor"
  homepage "https://oeksound.com/plugins/soothe2/"

  livecheck do
    url "https://oeksound.com/changelog/soothe2/"
    regex(%r{href=.*?/soothe2-(\d+(?:\.\d+)+)\.pkg}i)
  end

  depends_on macos: ">= :yosemite"

  pkg "soothe2.pkg"

  uninstall pkgutil: [
    "com.oeksound.soothe2.common",
    "com.oeksound.soothe2.vst3",
    "com.oeksound.soothe2.vst",
    "com.oeksound.soothe2.au",
    "com.oeksound.soothe2.aax",
  ]

  zap trash: [
    "~/Library/Application Support/oeksound/soothe2/config.xml",
    "~/Documents/oeksound/soothe2/presets",
  ]
end
