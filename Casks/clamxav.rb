cask "clamxav" do
  version "3.3,8974"
  sha256 "4841b0d3c7c09a351f2183ea9c349224155709d435bda061faf28b4b3b50233c"

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
