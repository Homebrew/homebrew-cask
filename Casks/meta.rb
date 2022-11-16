cask "meta" do
  version "2.1.6,3513"
  sha256 "bba46b1b7cf6e3bb4c93769e397201593994c2b8c97d51fa7797fae7cf659ed6"

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version.csv.first}.zip"
  name "Meta"
  desc "Tag editor for digital music"
  homepage "https://www.nightbirdsevolve.com/meta/"

  livecheck do
    url "https://www.nightbirdsevolve.com/meta/updates/"
    strategy :sparkle
  end

  app "Meta.app"
end
