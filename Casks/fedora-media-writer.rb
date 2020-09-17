cask "fedora-media-writer" do
  version "4.1.6"
  sha256 "6a9d9f14423f98197730b097a9121f3c833baec489989e6d1168f353ae80c579"

  # github.com/FedoraQt/MediaWriter/ was verified as official when first introduced to the cask
  url "https://github.com/FedoraQt/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx-#{version}.unnotarized.dmg"
  appcast "https://github.com/FedoraQt/MediaWriter/releases.atom"
  name "Fedora Media Writer"
  desc "Tool to write Fedora images to portable media files"
  homepage "https://docs.fedoraproject.org/en-US/quick-docs/creating-and-using-a-live-installation-image/"

  app "Fedora Media Writer.app"
end
