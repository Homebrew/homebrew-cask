cask "onecast" do
  version "2.0"
  sha256 :no_check

  url "https://onecast.me/downloads/OneCast.dmg"
  name "OneCast"
  homepage "https://onecast.me/"

  livecheck do
    url "https://onecast.me/download/"
    regex(/>v(\d+(?:\.\d+)*)</)
  end

  auto_updates true

  app "OneCast.app"
end
