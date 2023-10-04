cask "fedora-media-writer" do
  version "5.0.8"
  sha256 "21d3fbe8cdac4be64fbf1a04e508d695ac116a9b1168c28e2569da85075e248c"

  url "https://github.com/FedoraQt/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx-#{version}.unnotarized.dmg",
      verified: "github.com/FedoraQt/MediaWriter/"
  name "Fedora Media Writer"
  desc "Tool to write Fedora images to portable media files"
  homepage "https://docs.fedoraproject.org/en-US/quick-docs/creating-and-using-a-live-installation-image/"

  depends_on macos: ">= :mojave"

  app "Fedora Media Writer.app"

  zap trash: "~/Library/Saved Application State/org.fedoraproject.MediaWriter.savedState"
end
