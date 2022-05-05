cask "clamxav" do
  version "3.4,9154"
  sha256 "32d07e6e04c6b8df0a38d69d7d371e48969b0aa4794bb13863296976cc9f96ff"

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
