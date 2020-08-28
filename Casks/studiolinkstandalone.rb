cask "studiolinkstandalone" do
  version "20.05.5"
  sha256 "33cde83fb612f2d0f152cd32e788a0da15d97c3c59dc7dea273f567130eb9c0b"

  # download.studio.link/ was verified as official when first introduced to the cask
  url "https://download.studio.link/releases/v#{version}-stable/osx/signed/studio-link-standalone-v#{version}-stable.zip"
  appcast "https://gitlab.com/studio.link/app/-/tags?format=atom"
  name "Studio Link Standalone"
  homepage "https://studio-link.de/"

  app "StudioLinkStandalone.app"
end
