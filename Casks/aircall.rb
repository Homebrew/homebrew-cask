cask "aircall" do
  version "2.18.2"
  sha256 "cbfe83484c994340ad52921b5281e3990a7c34143ad48ca256eb5de725f3b88e"

  url "https://download-electron.aircall.io/Aircall-#{version}.zip"
  name "Aircall"
  desc "Cloud-based call center and phone system software"
  homepage "https://aircall.io/"

  livecheck do
    url "https://electron.aircall.io/download/osx"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Aircall.app"
end
