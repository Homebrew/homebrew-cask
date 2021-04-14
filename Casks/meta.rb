cask "meta" do
  version "1.9.9,2761"
  sha256 "ea08b6a91325aa0f81edddbd960978da7535b1eb116e14e81cb82e85d2b37a7c"

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version.before_comma}.zip"
  name "Meta"
  desc "Tag editor for digital music"
  homepage "https://www.nightbirdsevolve.com/meta/"

  livecheck do
    url "https://www.nightbirdsevolve.com/meta/updates/"
    strategy :sparkle
  end

  app "Meta.app"
end
