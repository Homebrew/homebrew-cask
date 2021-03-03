cask "clamxav" do
  version "3.2,8776"
  sha256 "56d02239374b72fd68f4d84502615a3ed56f2e0ad037ffbca8fec5181fa22fee"

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
