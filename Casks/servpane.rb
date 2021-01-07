cask "servpane" do
  version "0.1.1"
  sha256 "07f37334bc723d4aefa81411e604d4a20306d89b1553500b8acc715ee503f314"

  url "https://github.com/aderyabin/ServPane/releases/download/v#{version}/ServPane-#{version}.dmg"
  name "ServPane"
  desc "Launchd menu bar app"
  homepage "https://github.com/aderyabin/ServPane"

  livecheck do
    url :url
    strategy :git
  end

  app "ServPane.app"
end
