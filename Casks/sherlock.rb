cask "sherlock" do
  version "1.11.0"
  sha256 "b95096c5a791532161b521d4d8e406805899f1a72e5f7c0e4144dff700c446a4"

  # dl.devmate.com/io.inspiredcode.Sherlock/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/io.inspiredcode.Sherlock/Sherlock.dmg"
  appcast "http://sparkle.sherlock.inspiredcode.io"
  name "Sherlock"
  homepage "https://sherlock.inspiredcode.io/"

  depends_on macos: ">= :sierra"

  app "Sherlock.app"
end
