cask "persepolis-download-manager" do
  version "4.0.1"
  sha256 "ef4d6ee3d17788408cb4cca1ab34b1b00126cce3dfdccf4c2d926f151f957277"

  url "https://github.com/persepolisdm/persepolis/releases/download/#{version}/persepolis_#{version}.1_macos.dmg",
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
