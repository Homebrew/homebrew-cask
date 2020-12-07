cask "sherlock" do
  version "1.12.0"
  sha256 "a5c970647240a195a079e5194cc6f87d3674f6dd1a243c7e73f6becfa2d4c626"

  # dl.devmate.com/io.inspiredcode.Sherlock/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/io.inspiredcode.Sherlock/Sherlock.dmg"
  appcast "http://sparkle.sherlock.inspiredcode.io"
  name "Sherlock"
  homepage "https://sherlock.inspiredcode.io/"

  depends_on macos: ">= :sierra"

  app "Sherlock.app"
end
