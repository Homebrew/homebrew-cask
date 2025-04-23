cask "fedora-media-writer" do
  arch arm: "-arm64"

  version "5.2.5"
  sha256 arm:   "66d9fc780288e0824496ba33fe17c2f96a2f43bd2295b7c7cad2c548388d3a08",
         intel: "4d561ae4532d5965e9422fde6cbb3393aa966db509e0a0ec0844a6e63e24d683"

  url "https://github.com/FedoraQt/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx#{arch}-#{version}.dmg",
      verified: "github.com/FedoraQt/MediaWriter/"
  name "Fedora Media Writer"
  desc "Tool to write Fedora images to portable media files"
  homepage "https://docs.fedoraproject.org/en-US/quick-docs/creating-and-using-a-live-installation-image/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "FedoraMediaWriter.app"

  zap trash: [
    "~/Library/Caches/fedoraproject.org",
    "~/Library/Saved Application State/org.fedoraproject.MediaWriter.savedState",
  ]
end
