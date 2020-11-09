cask "clamxav" do
  version "3.1.1_8632"
  sha256 "3168436f9cdffef0a1ab2f705cdaad287d6374c537119fd65462a2997ad6e919"

  url "https://cdn.clamxav.com/ClamXAVdownloads/ClamXAV_#{version}.zip"
  appcast "https://www.clamxav.com/sparkle/appcast#{version.major}.xml"
  name "ClamXAV"
  desc "Anti-virus and malware scanner"
  homepage "https://www.clamxav.com/"

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
