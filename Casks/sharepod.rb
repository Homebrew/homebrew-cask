cask "sharepod" do
  version "4.3.2"
  sha256 "1e6799be8764fb6f57ff87fef79de86d0391d63d349f68999f02729a72529211"

  url "https://assets.macroplant.com/download/32/Sharepod-#{version}.dmg",
      verified: "assets.macroplant.com/"
  name "Sharepod"
  homepage "https://www.getsharepod.com/"

  livecheck do
    url "https://macroplant.com/sharepod/download/"
    strategy :header_match
  end

  app "Sharepod.app"
end
