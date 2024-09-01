cask "openaudible" do
  version "4.4.5"
  sha256 "a5b88e3ec7fa05b641baba08bb0cbd12f4a75072977ae8bde647691757e172a2"

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
