cask "meta" do
  version "2.1.2,3433"
  sha256 "bcd100a7dbe839f1f2101c437c83fb16d0f379641c5f030dedf7ca420b374205"

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version.csv.first}.zip"
  name "Meta"
  desc "Tag editor for digital music"
  homepage "https://www.nightbirdsevolve.com/meta/"

  livecheck do
    url "https://www.nightbirdsevolve.com/meta/updates/"
    strategy :sparkle
  end

  depends_on macos: ">= :yosemite"

  app "Meta.app"
end
