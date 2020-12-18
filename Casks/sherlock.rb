cask "sherlock" do
  version "1.12.0"
  sha256 :no_check

  url "https://dl.devmate.com/io.inspiredcode.Sherlock/Sherlock.dmg",
      verified: "dl.devmate.com/io.inspiredcode.Sherlock/"
  appcast "http://sparkle.sherlock.inspiredcode.io"
  name "Sherlock"
  homepage "https://sherlock.inspiredcode.io/"

  depends_on macos: ">= :sierra"

  app "Sherlock.app"
end
