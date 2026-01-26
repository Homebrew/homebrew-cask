cask "jazz2-resurrection" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  arch arm: "ARM64", intel: "x64"

  version "3.5.0"
  sha256 "3f19db63e2bdd7b81b90dad94605500be5e11e86168fca99741b0c727211f5b4"

  url "https://github.com/deathkiller/jazz2/releases/download/#{version}/Jazz2_#{version}_MacOS.zip",
      verified: "github.com/deathkiller/jazz2/"
  name "Jazz² Resurrection"
  desc "Open-source re-implementation of Jazz Jackrabbit 2 game engine"
  homepage "https://deat.tk/jazz2/"

  container nested: "#{arch}/jazz2_sdl2.dmg"

  app "Jazz² Resurrection.app"

  zap trash: "~/Library/Application Support/Jazz² Resurrection"

  caveats <<~EOS
    Game data should be installed to ~/Library/Application Support/Jazz² Resurrection/Source/
  EOS
end
