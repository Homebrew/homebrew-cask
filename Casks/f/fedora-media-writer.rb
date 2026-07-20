cask "fedora-media-writer" do
  arch arm: "-arm64"

  version "5.3.2"
  sha256 arm:   "0f9f6ab47554f878259867681336a8f9127e098528a385c155a8d4f1f4369138",
         intel: "48958cd464ee632ca6c9df7a3fe5da26cee4b7e4aada790b8372b80a69e8fb19"

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

  depends_on :macos

  app "FedoraMediaWriter.app"

  zap trash: [
    "~/Library/Caches/fedoraproject.org",
    "~/Library/Saved Application State/org.fedoraproject.MediaWriter.savedState",
  ]
end
