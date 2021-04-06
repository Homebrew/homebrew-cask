cask "gameshow" do
  version "4.5.1,1008.83473672"
  sha256 :no_check

  url "http://gameshow.net/downloads/Gameshow.dmg"
  name "Gameshow"
  homepage "http://gameshow.net/"

  app "Gameshow.app"

  zap trash: [
    "~/Library/Preferences/GameShow",
    "~/Library/Application Support/Gameshow",
  ]

  caveats do
    discontinued
  end
end
