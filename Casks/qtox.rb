cask "qtox" do
  version "1.17.2"
  sha256 "bfe2033d42b78e8b1f40a0276c806df33e221b208b15eb5ce6dda445f764cc6d"

  # github.com/qTox/qTox/ was verified as official when first introduced to the cask
  url "https://github.com/qTox/qTox/releases/download/v#{version}/qTox.dmg"
  appcast "https://github.com/qTox/qTox/releases.atom"
  name "qTox"
  homepage "https://qtox.github.io/"

  app "qTox.app"
end
