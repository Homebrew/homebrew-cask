cask "fedora-media-writer" do
  version "4.2.1"
  sha256 "c629ec038ef72f0c702936ed4542ca6e5208a27e815dd0cf5d85a393fc667e76"

  url "https://github.com/FedoraQt/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx-#{version}.unnotarized.dmg",
      verified: "github.com/FedoraQt/MediaWriter/"
  name "Fedora Media Writer"
  desc "Tool to write Fedora images to portable media files"
  homepage "https://docs.fedoraproject.org/en-US/quick-docs/creating-and-using-a-live-installation-image/"

  app "Fedora Media Writer.app"
end
