cask "fedora-media-writer" do
  version "4.1.7"
  sha256 "1f6eb202efe812236f7f9397235faeab5316150564ec2614fa3374a0ea0b37c8"

  url "https://github.com/FedoraQt/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx-#{version}.unnotarized.dmg",
      verified: "github.com/FedoraQt/MediaWriter/"
  appcast "https://github.com/FedoraQt/MediaWriter/releases.atom"
  name "Fedora Media Writer"
  desc "Tool to write Fedora images to portable media files"
  homepage "https://docs.fedoraproject.org/en-US/quick-docs/creating-and-using-a-live-installation-image/"

  app "Fedora Media Writer.app"
end
