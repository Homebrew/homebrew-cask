cask "keystore-explorer" do
  version "5.5.1"
  sha256 "0f109ca88c6a7950993efcaed50e39d8a7306075f7f5e60a2652015fc14fcefc"

  url "https://github.com/kaikramer/keystore-explorer/releases/download/v#{version}/kse-#{version.no_dots}.dmg",
      verified: "github.com/kaikramer/keystore-explorer/"
  name "KeyStore Explorer"
  desc "GUI replacement for the Java command-line utilities keytool and jarsigner"
  homepage "https://keystore-explorer.org/"

  app "KeyStore Explorer.app"
end
