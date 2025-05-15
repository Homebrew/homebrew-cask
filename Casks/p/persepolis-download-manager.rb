cask "persepolis-download-manager" do
  arch arm: "arm64", intel: "x64"

  version "5.1.1"
  sha256 arm:   "7983546e40b8e17e4d4b5bc10630a77d145bc8aa21c523f972e1ca46bffe9925",
         intel: "8c7eb9934f81160b6d11f4979d417bebab5bbd1b4fd63f97f96d729879f0c7fb"

  url "https://github.com/persepolisdm/persepolis/releases/download/#{version}/persepolis_#{version}_macos_#{arch}.dmg",
      verified: "github.com/persepolisdm/persepolis/"
  name "Persepolis"
  desc "Download manager"
  homepage "https://persepolisdm.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Persepolis Download Manager.app"

  zap trash: [
    "~/.persepolis",
    "~/Library/Application Support/persepolis_download_manager",
  ]
end
