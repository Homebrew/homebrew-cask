cask "fedora-media-writer" do
  arch arm: "-arm64"

  version "5.2.0"
  sha256 arm:   "b43394b36484689f925a5bb791728a50441426468f1b1070a41d8811f6b21dc6",
         intel: "084a5e6a610ffe1a469c3665717e198a7395e8400738fcabea0dc753f82aabb1"

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
