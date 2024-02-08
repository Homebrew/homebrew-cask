cask "clamxav" do
  version "3.6.2,10240"
  sha256 "8d7ca97d45ba5515437b8d4b1abab6c3a947a3448fa06a61bd1ec6b90c219be1"

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
