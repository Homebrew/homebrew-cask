cask "persepolis-download-manager" do
  arch arm: "arm64", intel: "x64"

  version "5.1.0"
  sha256 arm:   "d587c470c3fbbee989e9e194532f00fcd9235bb41bff2a483f399fdec8a00898",
         intel: "d61dcd2de4d735fffd2856ca13b2f34a636f85a4834d6837548236c6321bcad7"

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
