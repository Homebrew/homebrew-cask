cask "meta" do
  version "2.0.7,3248"
  sha256 "e2301b6654093979e1a443b92148b3bcd0b0ded48365d6b4923e95187a956f55"

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version.before_comma}.zip"
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
