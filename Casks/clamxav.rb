cask "clamxav" do
  version "3.5.1,9488"
  sha256 "706d0f5d9b03a0ce62b41d5df20faf9df154f402e5829210042e831a0767c4ab"

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
