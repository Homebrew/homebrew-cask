cask "fedora-media-writer" do
  version "5.0.6"
  sha256 "7fa0a444b926523fb6284b643c3b650bfca77adb74145a13d8eb37d1be43cf56"

  url "https://github.com/FedoraQt/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx-#{version}.notarized.dmg",
      verified: "github.com/FedoraQt/MediaWriter/"
  name "Fedora Media Writer"
  desc "Tool to write Fedora images to portable media files"
  homepage "https://docs.fedoraproject.org/en-US/quick-docs/creating-and-using-a-live-installation-image/"

  app "Fedora Media Writer.app"

  zap trash: [
    "~/Library/Saved Application State/org.fedoraproject.MediaWriter.savedState",
  ]
end
