cask "oscar" do
  version "1.7.0"
  sha256 "ef5504c1739524912b883c4d8c34459f18ea22cb08c363ff70ef90c2a659a084"

  url "https://www.sleepfiles.com/OSCAR/#{version}/OSCAR-#{version}-Qt5.dmg"
  name "OSCAR"
  desc "CPAP Analysis Reporter"
  homepage "https://www.sleepfiles.com/OSCAR/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/OSCAR[._-]v?(\d+(?:\.\d+)+)(?:[._-]Qt5)?\.dmg}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "OSCAR.app"

  zap trash: [
    "~/Library/Preferences/org.oscar-team.OSCAR.plist",
    "~/Library/Saved Application State/org.oscar-team.OSCAR.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
