cask "icefloor" do
  version "2.0.2"
  sha256 "b326bab20c022c12be9ed01c3aa0e5f072853ce7dc5fb756bddebc2c3abddf64"

  url "https://www.hanynet.com/icefloor-#{version}.zip"
  name "IceFloor"
  homepage "https://www.hanynet.com/icefloor/"

  livecheck do
    url "https://www.hanynet.com/icefloor/"
    strategy :page_match
    regex(%r{href=.*?/icefloor-(\d+(?:\.\d+)*)\.zip}i)
  end

  app "IceFloor.app"
end
