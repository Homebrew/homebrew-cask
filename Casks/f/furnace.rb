cask "furnace" do
  version :latest
  sha256 :no_check

  url "https://github.com/tildearrow/furnace/releases/download/v0.6pre7/furnace-0.6pre7-mac-arm64.dmg"
  name "Furnace"
  desc "Multi-system chiptune tracker"
  homepage "https://github.com/tildearrow/furnace"

  app "Furnace.app"
end
