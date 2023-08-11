cask "furnace" do
  version "0.6pre7"
  sha256 "8863c7f7becea62c2a65e4121e2cfe4d843d23e50e483eb68516df3301c9bbbc"

  url "https://github.com/tildearrow/furnace/releases/download/v#{version}/furnace-#{version}-mac-arm64.dmg"
  name "Furnace"
  desc "A multi-system chiptune tracker"

  homepage "https://github.com/tildearrow/furnace"
  app "Furnace.app"
end
