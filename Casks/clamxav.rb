cask "clamxav" do
  version "3.1.2,8690"
  sha256 "88ef445f3b806b4d1c6fd7c6f73edb970f71b8f0547b0bb4c71990ff03d248b2"

  url "https://cdn.clamxav.com/ClamXAVdownloads/ClamXAV_#{version.before_comma}_#{version.after_comma}.zip"
  name "ClamXAV"
  desc "Anti-virus and malware scanner"
  homepage "https://www.clamxav.com/"

  livecheck do
    url "https://www.clamxav.com/sparkle/appcast#{version.major}.xml"
    strategy :sparkle
  end

  app "ClamXAV.app"

  zap trash: [
    "~/Library/Caches/uk.co.markallan.clamxav",
    "~/Library/Logs/clamXav-scan.*",
  ]

  caveats do
    # this happens sometime after installation, but still worth warning about
    files_in_usr_local
  end
end
