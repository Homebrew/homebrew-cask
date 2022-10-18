cask "fedora-media-writer" do
  version "5.0.3"
  sha256 "628e774ba4c17b748bb88465d52ddc0e4014604840a7799ec4f051a30a6e7df2"

  url "https://github.com/FedoraQt/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx-#{version}.unnotarized.dmg",
      verified: "github.com/FedoraQt/MediaWriter/"
  name "Fedora Media Writer"
  desc "Tool to write Fedora images to portable media files"
  homepage "https://docs.fedoraproject.org/en-US/quick-docs/creating-and-using-a-live-installation-image/"

  app "Fedora Media Writer.app"
end
