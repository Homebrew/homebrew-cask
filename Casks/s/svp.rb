cask "svp" do
  version "4.6.264"
  sha256 "1727ccf30d05585c021e440752ee58d4ca3a6bb2bafac9f0d7cbfc99c4bcc0d1"

  url "https://www.svp-team.com/files/svp4-mac.#{version}.dmg"
  name "SVP 4 Mac"
  desc "Real Time Video Frame Rate Conversion"
  homepage "https://www.svp-team.com/"

  livecheck do
    url "https://www.svp-team.com/files/svp4-latest.php?mac"
    strategy :header_match
  end

  depends_on macos: ">= :mojave"

  app "SVP 4 Mac.app"

  zap trash: [
    "~/Library/Application Support/SVP4",
    "~/Library/Preferences/com.svp-team.SVP4.plist",
    "~/Library/Preferences/com.svp-team.svpmanager.plist",
  ]

  caveats do
    requires_rosetta
  end
end
