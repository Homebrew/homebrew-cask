cask "clamxav" do
  version "3.5.3,9670"
  sha256 "c20e86601a581668ded89b631d1f3f373f55f41e5d59444b438094bfa34536e9"

  url "https://cdn.clamxav.com/ClamXAVdownloads/ClamXAV_#{version.csv.first}_#{version.csv.second}.zip"
  name "ClamXAV"
  desc "Anti-virus and malware scanner"
  homepage "https://www.clamxav.com/"

  livecheck do
    url "https://www.clamxav.com/sparkle/appcast#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true

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
