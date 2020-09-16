cask "mucommander" do
  version "0.9.5-1"
  sha256 "476ffd9e271163513d9fde2d015d1da3f2777e54b913b10d4ef49ac7e016bae1"

  # github.com/mucommander/mucommander/ was verified as official when first introduced to the cask
  url "https://github.com/mucommander/mucommander/releases/download/#{version}/mucommander-#{version}.dmg"
  appcast "https://github.com/mucommander/mucommander/releases.atom"
  name "muCommander"
  desc "Lightweight, cross-platform file manager with a dual-pane interface"
  homepage "https://www.mucommander.com/"

  app "muCommander.app"
end
