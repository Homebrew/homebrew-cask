cask "meta" do
  version "2.1.5,3495"
  sha256 "44be42f8ca0c207519bf5b9f39366eb5fd4f970af69f09544f09346a541393b5"

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
