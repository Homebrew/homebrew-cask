cask "persepolis-download-manager" do
  arch arm: "arm64", intel: "x64"

  version "5.2.0"
  sha256 arm:   "092f7975e97ac73aff29d3b0fb084ba6ab4cb5529d6a7a6c8385676ec3468669",
         intel: "ce91acdba96448d00c7e712960a2670c0e9173a6fc9c382dbeca9ac258f9e319"

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
