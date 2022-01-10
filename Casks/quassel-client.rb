cask "quassel-client" do
  version "0.14.0"
  sha256 "73b1b65f0e75c88d1dd23aa91c1916a6a3c231472a042eca0907689ab0981b60"

  url "https://quassel-irc.org/pub/QuasselClient-macOS-#{version}.dmg"
  name "Quassel IRC"
  desc "Quassel IRC: Chat comfortably.  Everywhere"
  homepage "https://quassel-irc.org/"

  livecheck do
    url "https://github.com/quassel/quassel"
    strategy :github_latest
  end

  app "Quassel Client.app"
end
