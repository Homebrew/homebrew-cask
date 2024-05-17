cask "svp" do
  version "4.6.264"
  sha256 "1727ccf30d05585c021e440752ee58d4ca3a6bb2bafac9f0d7cbfc99c4bcc0d1"

  url "https://www.svp-team.com/files/svp#{version.major}-mac.#{version}.dmg"
  name "SVP #{version.major} Mac"
  desc "Real time video frame rate converter"
  homepage "https://www.svp-team.com/"

  livecheck do
    url "https://www.svp-team.com/files/svp#{version.major}-latest.php?mac"
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
