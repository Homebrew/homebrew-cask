cask "fedora-media-writer" do
  version "4.1.80"
  sha256 "d78fc02eff9833fcc4958b9b53aca2a77822d738316a5752e6d7fa47479d31d6"

  url "https://github.com/FedoraQt/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx-#{version}.unnotarized.dmg",
      verified: "github.com/FedoraQt/MediaWriter/"
  appcast "https://github.com/FedoraQt/MediaWriter/releases.atom"
  name "Fedora Media Writer"
  desc "Tool to write Fedora images to portable media files"
  homepage "https://docs.fedoraproject.org/en-US/quick-docs/creating-and-using-a-live-installation-image/"

  app "Fedora Media Writer.app"
end
