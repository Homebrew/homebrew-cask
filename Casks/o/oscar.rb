cask "oscar" do
  arch arm: "ARM", intel: "Intel"
  version_prefix = on_arch_conditional intel: "20"

  version "2.1.1"
  sha256 arm:   "626dc6f0b1ac2b274f95e9c29fbc25280c5ac81e3584abec47cd70de6926a9a1",
         intel: "79d608bf8d65a95616133ba1fdec8b15ab2d321c0b94a4ca03c30ce5dc62979b"

  url "https://www.sleepfiles.com/OSCAR/#{version}/OSCAR#{version_prefix}-#{version}-#{arch}.dmg"
  name "OSCAR"
  desc "CPAP Analysis Reporter"
  homepage "https://www.sleepfiles.com/OSCAR/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/OSCAR.*?v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg}i)
  end

  depends_on macos: :ventura

  app "OSCAR20.app"

  uninstall quit: "org.oscar-team.OSCAR20"

  zap trash: [
    "~/Library/Preferences/org.oscar-team.OSCAR*.plist",
    "~/Library/Saved Application State/org.oscar-team.OSCAR.savedState",
  ]
end
