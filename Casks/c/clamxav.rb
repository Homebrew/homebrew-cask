cask "clamxav" do
  version "3.6.3,10255"
  sha256 "a11bfa923a53aa74ee1b3b0541da30f11a83f547c3fffeb4dc68eb0e0c139c74"

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
