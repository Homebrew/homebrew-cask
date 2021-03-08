cask "atemosc" do
  version "4.1.0"
  sha256 "86973d0d94aaa37025b7316046b7d70babee2cc590562c0b93ee091b66f8cea0"

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
