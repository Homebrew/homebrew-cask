cask "insync" do
  version "3.3.3.40905"
  sha256 "ee0af60d20dc23128ce56546cba9070b6a947775e616721467ecbf90092d58b9"

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  appcast "https://www.insynchq.com/downloads?start=true"
  name "Insync"
  homepage "https://www.insynchq.com/"

  auto_updates true

  app "Insync.app"
end
