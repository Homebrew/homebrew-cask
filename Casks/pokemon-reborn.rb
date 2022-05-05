cask "pokemon-reborn" do
  version "18.4.1"
  sha256 "050321012415d213ce8f140710b6f21cb2c4f226603b6cb430e885660cc5feec"

  url "https://www.rebornevo.com/downloads/Reborn#{version}%204%20Fruits.zip"
  name "Pokemon Reborn"
  homepage "https://www.rebornevo.com/"

  livecheck do
    url "https://www.rebornevo.com/pr/download/"
    regex(%r{href=.*?/Reborn(\d+(?:\.\d+)*)%204%20Fruits\.zip}i)
  end

  app "Pokemon Reborn.app"
end
