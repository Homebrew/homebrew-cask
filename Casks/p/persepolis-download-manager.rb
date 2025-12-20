cask "persepolis-download-manager" do
  version "5.2.0"
  sha256 "548b4b07904f8ec57d7f5d746459bf32a1bd0e0ae710e58108a37e3f17043895"

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

  caveats do
    requires_rosetta
  end
end
