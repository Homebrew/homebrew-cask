cask "keystore-explorer" do
  version "5.5.0"
  sha256 "ec50f0e15a2c3fa3077285f928cbfcf98a0dd5fdd3646b7e4bf1e79f8d0e2153"

  url "https://github.com/kaikramer/keystore-explorer/releases/download/v#{version}/kse-#{version.no_dots}.dmg",
      verified: "github.com/kaikramer/keystore-explorer/"
  name "KeyStore Explorer"
  homepage "https://keystore-explorer.org/"

  app "KeyStore Explorer.app"
end
