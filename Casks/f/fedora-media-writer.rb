cask "fedora-media-writer" do
  arch arm: "-arm64"

  version "5.3.0"
  sha256 arm:   "9576aea6e409de2809ff9103b0b88d4cbdb84d8a405eb4cb52fbab49a70ab606",
         intel: "a9cde4b7dd29607a64fc4d597920b3cbba9cdaebc7a18a9ab9dd6f8a1a10e5ef"

  url "https://github.com/FedoraQt/MediaWriter/releases/download/#{version}/FedoraMediaWriter-macos#{arch}-#{version}.dmg",
      verified: "github.com/FedoraQt/MediaWriter/"
  name "Fedora Media Writer"
  desc "Tool to write Fedora images to portable media files"
  homepage "https://docs.fedoraproject.org/en-US/quick-docs/creating-and-using-a-live-installation-image/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "FedoraMediaWriter.app"

  zap trash: [
    "~/Library/Caches/fedoraproject.org",
    "~/Library/Saved Application State/org.fedoraproject.MediaWriter.savedState",
  ]
end
