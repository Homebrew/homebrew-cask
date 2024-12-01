cask "jazz2-resurrection" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  arch arm: "ARM64", intel: "x64"

  version "3.0.0"
  sha256 "61bf69c621fb84fb2b59a6f7b9685cec9a1fffb8e6ca7af97c3b106a1d087b78"

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
