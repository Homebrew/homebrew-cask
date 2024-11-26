cask "clamxav" do
  version "3.8,10918"
  sha256 "5149d3729b2f006b6cdc96cf5be16257476a6b635fdb5ab8888effc4d0030a32"

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
    "~/Library/Logs/ClamXAV-Console.log",
    "~/Library/Logs/clamXav-scan.*",
    "~/Library/Logs/ClamXAV-UI-Helper-Console.log",
  ]

  caveats do
    # this happens sometime after installation, but still worth warning about
    files_in_usr_local
  end
end
