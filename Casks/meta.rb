cask "meta" do
  version "2.1.6,3517"
  sha256 "182dcaf09e272ead64bce2c391338f013826129e91560cf8a9a1634ae8b8815e"

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
