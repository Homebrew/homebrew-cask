cask "fedora-media-writer" do
  version "4.2.0"
  sha256 "182b0f0a357f2bdae299acdd7ea99c72a94f76fdf49958970c96ef14330858a1"

  url "https://github.com/FedoraQt/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx-#{version}.unnotarized.dmg",
      verified: "github.com/FedoraQt/MediaWriter/"
  appcast "https://github.com/FedoraQt/MediaWriter/releases.atom"
  name "Fedora Media Writer"
  desc "Tool to write Fedora images to portable media files"
  homepage "https://docs.fedoraproject.org/en-US/quick-docs/creating-and-using-a-live-installation-image/"

  app "Fedora Media Writer.app"
end
