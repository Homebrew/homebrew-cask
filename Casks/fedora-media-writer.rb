cask "fedora-media-writer" do
  version "5.0.6"
  sha256 "63f0c7fec01572fbf0d6210b923c4726d8f60fa5c481bcfa96a0a8ee63659ac5"

  url "https://github.com/FedoraQt/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx-#{version}.unnotarized.dmg",
      verified: "github.com/FedoraQt/MediaWriter/"
  name "Fedora Media Writer"
  desc "Tool to write Fedora images to portable media files"
  homepage "https://docs.fedoraproject.org/en-US/quick-docs/creating-and-using-a-live-installation-image/"

  app "Fedora Media Writer.app"
end
