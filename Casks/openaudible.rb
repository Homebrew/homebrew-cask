cask "openaudible" do
  version "3.7.6.1"
  sha256 "c81212189dac3d4838a293393dbd533e0bce94f6451b722b3416db5b1987c2d6"

  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}.dmg",
      verified: "github.com/openaudible/openaudible/"
  name "OpenAudible"
  desc "Audiobook manager for Audible users"
  homepage "https://openaudible.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OpenAudible.app"

  zap trash: "/Library/OpenAudible"
end
