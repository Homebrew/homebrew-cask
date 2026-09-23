cask "svp" do
  version "4.7.325"
  sha256 "89a121a83e62b3b0776672a94e5b735a6d410cb841c7295d4adf23c18a7bf5d3"

  url "https://www.svp-team.com/files/svp#{version.major}-mac.#{version}.dmg"
  name "SVP #{version.major} Mac"
  desc "Real time video frame rate converter"
  homepage "https://www.svp-team.com/"

  livecheck do
    url "https://www.svp-team.com/files/svp#{version.major}-latest.php?mac"
    regex(/svp\d+[._-]mac[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
    strategy :header_match
  end

  depends_on :macos

  app "SVP #{version.major} Mac.app"

  uninstall quit: "com.svp-team.svpmanager"

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
