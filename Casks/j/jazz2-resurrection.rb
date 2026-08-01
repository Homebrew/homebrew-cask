cask "jazz2-resurrection" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  arch arm: "ARM64", intel: "x64"

  version "3.7.0"
  sha256 "b737320e4802e9b7fbe125438a10e82c50496729da117cc9354dd506280d43d0"

  url "https://github.com/deathkiller/jazz2/releases/download/#{version}/Jazz2_#{version}_MacOS.zip",
      verified: "github.com/deathkiller/jazz2/"
  name "Jazz² Resurrection"
  desc "Open-source re-implementation of Jazz Jackrabbit 2 game engine"
  homepage "https://deat.tk/jazz2/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos
  container nested: "#{arch}/jazz2_sdl2.dmg"

  app "Jazz² Resurrection.app"

  uninstall quit: "jazz2.resurrection"

  zap trash: "~/Library/Application Support/Jazz² Resurrection"

  caveats <<~EOS
    Game data should be installed to ~/Library/Application Support/Jazz² Resurrection/Source/
  EOS
end
