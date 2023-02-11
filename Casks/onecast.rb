cask "onecast" do
  version "2.1"
  sha256 :no_check

  url "https://onecast.me/downloads/OneCast.dmg"
  name "OneCast"
  desc "Xbox remote play"
  homepage "https://onecast.me/"

  livecheck do
    url "https://onecast.me/download/"
    regex(/>v(\d+(?:\.\d+)+)</)
  end

  auto_updates true

  app "OneCast.app"
end
