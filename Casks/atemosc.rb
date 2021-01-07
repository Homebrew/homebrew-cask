cask "atemosc" do
  version "3.1.6"
  sha256 "d4487e5d81da790a05ad3c0f3198792c8cfc88092352dc3bef0120c5078e69c5"

  url "https://github.com/SteffeyDev/atemOSC/releases/download/v#{version}/atemOSC_#{version}.dmg",
      verified: "github.com/SteffeyDev/atemOSC/"
  appcast "https://github.com/SteffeyDev/atemOSC/releases.atom"
  name "atemOSC"
  desc "Control BMD ATEM video switchers with OSC"
  homepage "http://www.atemosc.com/"

  app "atemOSC.app"

  zap trash: "~/Library/Caches/cc.buechele.atemOSC"
end
