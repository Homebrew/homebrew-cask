cask "jazz2-resurrection" do
  arch arm: "ARM64", intel: "x64"

  version "2.2.2"
  sha256 "f7d3f00ca83bf1cef3203da2cc687098b8418ba2a2aaff1b9a2d510f5a863ab3"

  url "https://github.com/deathkiller/jazz2/releases/download/#{version}/Jazz2_#{version}_MacOS.zip",
      verified: "github.com/deathkiller/jazz2/"
  name "Jazz² Resurrection"
  desc "Open-source re-implemenation of Jazz Jackrabbit 2 game engine"
  homepage "https://deat.tk/jazz2/"

  container nested: "#{arch}/jazz2_sdl2.dmg"

  app "Jazz² Resurrection.app"

  zap trash: "~/Library/Application Support/Jazz² Resurrection"
end
