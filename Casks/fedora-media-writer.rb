cask "fedora-media-writer" do
  version "4.2.2"
  sha256 "52cc7964970df39cc75d5e9db22eb1725bcc8c62fde5acd9907c36d3598eb1d4"

  url "https://github.com/FedoraQt/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx-#{version}.unnotarized.dmg",
      verified: "github.com/FedoraQt/MediaWriter/"
  name "Fedora Media Writer"
  desc "Tool to write Fedora images to portable media files"
  homepage "https://docs.fedoraproject.org/en-US/quick-docs/creating-and-using-a-live-installation-image/"

  app "Fedora Media Writer.app"
end
