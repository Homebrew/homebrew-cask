cask "fedora-media-writer" do
  arch arm: "-arm64"

  version "5.2.2"
  sha256 arm:   "8577272947db03faecf7a0255c915d1eed499d9f67d3a027e796349c724c1989",
         intel: "7f4613ec571fd37a06993abbba02a14d803c6ae388555adb757d24fff69fc1ae"

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
