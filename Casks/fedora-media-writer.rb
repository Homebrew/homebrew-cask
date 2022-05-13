cask "fedora-media-writer" do
  version "5.0.1"
  sha256 "f7dd4eb697396e469fb12cc73fc70d29e3e1d52d82fa0cd454a83f6200d1a8a0"

  url "https://github.com/FedoraQt/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx-#{version}.unnotarized.dmg",
      verified: "github.com/FedoraQt/MediaWriter/"
  name "Fedora Media Writer"
  desc "Tool to write Fedora images to portable media files"
  homepage "https://docs.fedoraproject.org/en-US/quick-docs/creating-and-using-a-live-installation-image/"

  app "Fedora Media Writer.app"
end
