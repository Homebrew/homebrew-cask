cask "svp" do
  version "4.7.300-2"
  sha256 "03fb4a6153aae6571fb993b7a2151d9471e0573fe166b58e107d554be2281496"

  url "https://www.svp-team.com/files/svp#{version.major}-mac.#{version}.dmg"
  name "SVP #{version.major} Mac"
  desc "Real time video frame rate converter"
  homepage "https://www.svp-team.com/"

  livecheck do
    url "https://www.svp-team.com/files/svp#{version.major}-latest.php?mac"
    regex(/svp\d+[._-]mac[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
    strategy :header_match
  end

  depends_on macos: ">= :mojave"

  app "SVP #{version.major} Mac.app"

  zap trash: [
    "~/Library/Application Support/SVP#{version.major}",
    "~/Library/Preferences/com.svp-team.SVP#{version.major}.plist",
    "~/Library/Preferences/com.svp-team.svpmanager.plist",
    "~/Library/Saved Application State/com.svp-team.svpmanager.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
