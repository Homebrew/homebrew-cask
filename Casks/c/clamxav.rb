cask "clamxav" do
  version "3.7,10564"
  sha256 "91b2c0eba50e0fdbe964c14a0ca293c64db580dd093d355b97207f5000cc96c3"

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
