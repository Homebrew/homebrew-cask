cask "oscar" do
  version "1.7.1"
  sha256 "fa6171ddbef287490469abcdd9793e4303fb116af7c125c487ec571ff787db7d"

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
