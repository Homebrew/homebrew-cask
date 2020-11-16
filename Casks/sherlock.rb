cask "sherlock" do
  version "1.9.0"
  sha256 "56bc2f5477633aa8e8672fc8da1bd4ac9cac3960762f3b3f13a062aca6faebbc"

  # dl.devmate.com/io.inspiredcode.Sherlock/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/io.inspiredcode.Sherlock/Sherlock.dmg"
  appcast "http://sparkle.sherlock.inspiredcode.io"
  name "Sherlock"
  homepage "https://sherlock.inspiredcode.io/"

  depends_on macos: ">= :sierra"

  app "Sherlock.app"
end
