cask "sonarr" do
  version "3.0.6.1196"
  sha256 "41055ce7e24f46f1ea62745251d245dd9ed827a2fbfdf63732ff4a65470ce707"

  url "https://github.com/Sonarr/Sonarr/archive/refs/tags/v#{version}.zip",
      verified: "github.com/Sonarr/Sonarr/"
  name "Sonarr"
  homepage "https://sonarr.tv/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on cask: "mono-mdk"

  app "Sonarr-#{version}/distribution/osx/Sonarr.app"

  preflight do
    set_permissions "#{staged_path}/Sonarr.app", "0755"
  end

  zap trash: [
    "~/Library/Application Support/Sonarr",
    "~/Library/Preferences/tv.sonarr.Sonarr.plist",
    "~/.config/NzbDrone",
  ]
end
