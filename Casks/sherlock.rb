cask "sherlock" do
  version "1.15.0"
  sha256 :no_check

  url "https://dl.devmate.com/io.inspiredcode.Sherlock/Sherlock.dmg",
      verified: "dl.devmate.com/io.inspiredcode.Sherlock/"
  name "Sherlock"
  homepage "https://sherlock.inspiredcode.io/"

  livecheck do
    url "http://sparkle.sherlock.inspiredcode.io"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Sherlock.app"
end
