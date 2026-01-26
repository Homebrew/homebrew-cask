cask "fedora-media-writer" do
  arch arm: "-arm64"

  version "5.2.9"
  sha256 arm:   "b87ef52ffe7b41da43f60148223c410b268352688f07f0d35beed5b1f6c41b6e",
         intel: "251d07b5c4e755b72e44edd60af11227cab864fb710bd29480756e90a2332a9f"

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
