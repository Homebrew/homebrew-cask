cask "fedora-media-writer" do
  arch arm: "-arm64"

  version "5.2.8"
  sha256 arm:   "06e4762a52358c5e3f382539b1e29cc838381b3a4ad7ec8995f2cbba7cfbf396",
         intel: "5bcfa5c302133aa97b941d1a7b569f321febc3af0693bbc2b8ee55c582f8a5e2"

  url "https://github.com/FedoraQt/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx#{arch}-#{version}.dmg",
      verified: "github.com/FedoraQt/MediaWriter/"
  name "Fedora Media Writer"
  desc "Tool to write Fedora images to portable media files"
  homepage "https://docs.fedoraproject.org/en-US/quick-docs/creating-and-using-a-live-installation-image/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :mojave"

  app "FedoraMediaWriter.app"

  zap trash: [
    "~/Library/Caches/fedoraproject.org",
    "~/Library/Saved Application State/org.fedoraproject.MediaWriter.savedState",
  ]
end
