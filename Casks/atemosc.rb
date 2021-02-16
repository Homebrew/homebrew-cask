cask "atemosc" do
  version "4.0.0"
  sha256 "e65f90a16517d2f30bdfa8563443a9f392a87b71bbc1e644c466d39cb6afbd97"

  url "https://github.com/SteffeyDev/atemOSC/releases/download/v#{version}/atemOSC_#{version}.dmg",
      verified: "github.com/SteffeyDev/atemOSC/"
  name "atemOSC"
  desc "Control BMD ATEM video switchers with OSC"
  homepage "https://www.atemosc.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "atemOSC.app"

  zap trash: "~/Library/Caches/cc.buechele.atemOSC"
end
