cask "svp" do
  version "4.6.294"
  sha256 "95e6eac4d921a60476bd46d87b77b47e0bfe5f58425d730e0f94aa0d747672d9"

  url "https://www.svp-team.com/files/svp#{version.major}-mac.#{version}.dmg"
  name "SVP #{version.major} Mac"
  desc "Real time video frame rate converter"
  homepage "https://www.svp-team.com/"

  livecheck do
    url "https://www.svp-team.com/files/svp#{version.major}-latest.php?mac"
    strategy :header_match
  end

  no_autobump! because: :requires_manual_review

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
