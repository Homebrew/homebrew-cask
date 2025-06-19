cask "fedora-media-writer" do
  arch arm: "-arm64"

  version "5.2.6"
  sha256 arm:   "800b93085f9ab487ad5bdd9a1207bcedf3b1d4765171f18bb1b0129b3a07d586",
         intel: "2247d1d30184d6bf61a16354c5fa3988580cb913ebdacc0938e246b2e18dc75b"

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
