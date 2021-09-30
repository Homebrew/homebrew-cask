cask "mousemory" do
  version "1.0"
  sha256 "5484a91a9ef8212946a1618bf0253581c629b717d907a6bb7a751a4ec781fbdb"

  url "https://github.com/rezigned/Mousemory/releases/download/v#{version}/Mousemory.dmg"
  name "Mousemory"
  desc "Mousemory - remembers mouse position across multiple monitors"
  homepage "https://github.com/rezigned/Mousemory"

  app "Mousemory.app"
end
