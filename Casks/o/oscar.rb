cask "oscar" do
  arch arm: "ARM", intel: "Intel"

  version "2.0.0"
  sha256 arm:   "26ce5039ee73a10364a09d92ccfbc24720d75ffb57e40ea829129e5817638813",
         intel: "0a08b55ca66c272b127d9dd1399fd3a18b61abae5d876554d3ee0632f5614e34"

  url "https://www.sleepfiles.com/OSCAR/#{version.major_minor}/OSCAR-#{version}-#{arch}.dmg"
  name "OSCAR"
  desc "CPAP Analysis Reporter"
  homepage "https://www.sleepfiles.com/OSCAR/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/OSCAR[._-]v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :ventura

  app "OSCAR#{version.major_minor.no_dots}.app"

  zap trash: [
    "~/Library/Preferences/org.oscar-team.OSCAR.plist",
    "~/Library/Saved Application State/org.oscar-team.OSCAR.savedState",
  ]
end
