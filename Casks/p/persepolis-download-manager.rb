cask "persepolis-download-manager" do
  version "4.0.1"
  sha256 "563a591c92c1fd3a6ea11761ba29614eef2b1a0e78eb7f0827bde452c1b5b610"

  url "https://github.com/persepolisdm/persepolis/releases/download/#{version}/Persepolis.Download.Manager.Intel.Chips.dmg",
      verified: "github.com/persepolisdm/persepolis/"
  name "Persepolis"
  desc "GUI for aria2"
  homepage "https://persepolisdm.github.io/"

  app "Persepolis Download Manager.app"
end
