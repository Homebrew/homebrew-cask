cask "gameshow" do
  version :latest
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
