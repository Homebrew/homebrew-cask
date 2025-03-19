cask "persepolis-download-manager" do
  version "5.0.2"
  sha256 "4405ab1967ee30268383476d5c4701bbd1761104b53009f1e662b16bf1522334"

  url "https://github.com/persepolisdm/persepolis/releases/download/#{version}/persepolis_#{version}_macos.dmg",
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
