cask "fedora-media-writer" do
  arch arm: "-arm64"

  version "5.3.1"
  sha256 arm:   "7ea78e3ac5a008af78e50559ae7a59a73e93860e50ddb5a16c429f6629a41cbb",
         intel: "cb9b60cba14db394ddd232ad582d7244780e5231d41d6d8166cc16343baa30a9"

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
