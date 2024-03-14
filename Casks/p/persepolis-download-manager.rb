cask "persepolis-download-manager" do
  arch arm: "M", intel: "Intel"

  version "4.0.1"
  sha256 arm:   "67c430937e6062a40a432cd09282188487f2c6af0a861f3de1131e483447fe55",
         intel: "563a591c92c1fd3a6ea11761ba29614eef2b1a0e78eb7f0827bde452c1b5b610"

  url "https://github.com/persepolisdm/persepolis/releases/download/#{version}/Persepolis.Download.Manager.#{arch}.Chips.dmg",
      verified: "github.com/persepolisdm/persepolis/"
  name "Persepolis"
  desc "GUI for aria2"
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
