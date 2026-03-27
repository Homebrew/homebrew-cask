cask "oscar" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.7.1"
  sha256 arm:   "f4ff813ccfca6eafe7b3102df84344b4197c84f56e6c81f9f39ea937fea2c5fe",
         intel: "fa6171ddbef287490469abcdd9793e4303fb116af7c125c487ec571ff787db7d"

  on_intel do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check
  end

  url "https://www.sleepfiles.com/OSCAR/#{version}/OSCAR-#{version}-#{arch}.dmg"
  name "OSCAR"
  desc "CPAP Analysis Reporter"
  homepage "https://www.sleepfiles.com/OSCAR/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/OSCAR[._-]v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg}i)
  end

  app "OSCAR.app"

  zap trash: [
    "~/Library/Preferences/org.oscar-team.OSCAR.plist",
    "~/Library/Saved Application State/org.oscar-team.OSCAR.savedState",
  ]
end
