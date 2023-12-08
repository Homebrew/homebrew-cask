cask "fedora-media-writer" do
  arch arm: "-arm64"

  version "5.0.9"
  sha256 arm:   "aec43572e16f7dc49bd48bd319f25b644ea475b95389322ab6b6cd56044b6fde",
         intel: "888d23f9265fc39525ae4ba5626ecd540bbd0a2984ca3ebaae496512269fb33c"

  url "https://github.com/FedoraQt/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx#{arch}-#{version}.dmg",
      verified: "github.com/FedoraQt/MediaWriter/"
  name "Fedora Media Writer"
  desc "Tool to write Fedora images to portable media files"
  homepage "https://docs.fedoraproject.org/en-US/quick-docs/creating-and-using-a-live-installation-image/"

  depends_on macos: ">= :mojave"

  app "FedoraMediaWriter.app"

  zap trash: "~/Library/Saved Application State/org.fedoraproject.MediaWriter.savedState"
end
