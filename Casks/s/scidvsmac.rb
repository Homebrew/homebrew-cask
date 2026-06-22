cask "scidvsmac" do
  version "4.27"
  sha256 "89e16278504a9734671670f4dd5d5daa78f949808475fe5a111cf8c4b77763bf"

  url "https://downloads.sourceforge.net/scidvspc/ScidvsMac-#{version}.x64.dmg"
  name "Scid vs. Mac"
  desc "Chess toolkit"
  homepage "https://scidvspc.sourceforge.net/"

  livecheck do
    url :homepage
    regex(/ScidvsMac-(\d+(?:\.\d+)*)\.x64\.dmg/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "ScidvsMac.app"

  zap trash: [
    "~/.scidvspc",
    "~/Library/Preferences/net.sf.scid.plist",
    "~/Library/Saved Application State/net.sf.scid.savedState",
  ]
end
