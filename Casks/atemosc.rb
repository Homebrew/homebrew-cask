cask "atemosc" do
  version "4.2.0"
  sha256 "febccd6f839b80716c3d2fef23fa441a2a5e69865b1a42a841ccdc17d97a93a7"

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
