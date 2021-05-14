cask "atemosc" do
  version "4.1.4"
  sha256 "78f509fde5905e87e64269b55dab0de9721443c4e0b77642039ef69760262ece"

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
