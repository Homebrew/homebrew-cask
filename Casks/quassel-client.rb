cask "quassel-client" do
  version "0.13.1"
  sha256 "2ebfc69a0a5da2554080b6b3d6d27b577c8d5a591253549b5960788741d7aece"

  url "https://quassel-irc.org/pub/QuasselClient_MacOSX-x86_64_#{version}.dmg"
  name "Quassel IRC"
  desc "Quassel IRC: Chat comfortably.  Everywhere"
  homepage "https://quassel-irc.org/"

  livecheck do
    url "https://github.com/quassel/quassel"
    strategy :github_latest
  end

  app "Quassel Client.app"
end
