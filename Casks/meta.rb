cask "meta" do
  version "2.2"
  sha256 "18429c0f6875719af17f5845b1799b85c4bea45e7d915c45463cfa14e545236d"

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version}.zip"
  name "Meta"
  desc "Tag editor for digital music"
  homepage "https://www.nightbirdsevolve.com/meta/"

  livecheck do
    url "https://www.nightbirdsevolve.com/meta/updates/"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Meta.app"
end
