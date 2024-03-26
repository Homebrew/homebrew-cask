cask "fedora-media-writer" do
  arch arm: "-arm64"

  version "5.1.0"
  sha256 arm:   "dbfc074c9d5afb63c94ff00962d037fb733346b9f7790c7f2dadfa3f05025ada",
         intel: "6012db8d868f240bddaafc47a4c33a7962da6d888c0a6a7950970eec6a8de549"

  url "https://github.com/FedoraQt/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx#{arch}-#{version}.dmg",
      verified: "github.com/FedoraQt/MediaWriter/"
  name "Fedora Media Writer"
  desc "Tool to write Fedora images to portable media files"
  homepage "https://docs.fedoraproject.org/en-US/quick-docs/creating-and-using-a-live-installation-image/"

  depends_on macos: ">= :mojave"

  app "FedoraMediaWriter.app"

  zap trash: "~/Library/Saved Application State/org.fedoraproject.MediaWriter.savedState"
end
