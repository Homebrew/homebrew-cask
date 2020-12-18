cask "meta" do
  version "1.9.7"
  sha256 "2b77185c5fd62a79920844dc98b5db5492afa369955e343ab35ea6eb3d347f6f"

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version}.zip"
  appcast "https://www.nightbirdsevolve.com/meta/updates/"
  name "Meta"
  desc "Tag editor for digital music"
  homepage "https://www.nightbirdsevolve.com/meta/"

  app "Meta.app"
end
