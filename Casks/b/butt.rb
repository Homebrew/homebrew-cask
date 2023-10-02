cask "butt" do
  version "0.1.39"
  sha256 "aa5787a30859e8cd6c95a791584f6925fafc6596bd1fb865472a7293ae6653fb"

  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg",
      verified: "sourceforge.net/butt/"
  name "Broadcast Using This Tool"
  desc "Shoutcast and Icecast streaming client"
  homepage "https://danielnoethen.de/butt/"

  app "butt.app"

  zap trash: "~/.buttrc"
end
