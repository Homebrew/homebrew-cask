cask "persepolis-download-manager" do
  version "5.0.0"
  sha256 "b1009cf8308dccd29ae79e37582ff0c78adf632ac43f9479c9c23b9dcd2500af"

  url "https://github.com/persepolisdm/persepolis/releases/download/#{version}/persepolis_#{version}_macos.dmg",
      verified: "github.com/persepolisdm/persepolis/"
  name "Persepolis"
  desc "Persepolis Download Manager"
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
