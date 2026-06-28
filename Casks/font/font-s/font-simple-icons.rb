cask "font-simple-icons" do
  version "16.24.1"
  sha256 "009d0513b0707c49ff6c4a355b4bfc51cd647d047d9ba8636bfd6db2ad5af3dd"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
