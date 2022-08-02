cask "meta" do
  version "2.1.4,3465"
  sha256 "92719f48c1b325cee620147e91e67a86c2ebc5c4171fac57bbbaab12a91f1ae2"

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
