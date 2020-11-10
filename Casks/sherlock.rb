cask "sherlock" do
  version "1.8.1"
  sha256 "093f02131ef3559da98f3801794d632eb63f585992d475c9645b487a33bae71f"

  # dl.devmate.com/io.inspiredcode.Sherlock/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/io.inspiredcode.Sherlock/Sherlock.dmg"
  appcast "http://sparkle.sherlock.inspiredcode.io"
  name "Sherlock"
  homepage "https://sherlock.inspiredcode.io/"

  depends_on macos: ">= :sierra"

  app "Sherlock.app"
end
