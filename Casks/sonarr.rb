cask "sonarr" do
  version "3.0.5.1144"
  sha256 :no_check

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
    "~/.config/NzbDrone",
    "~/Library/Preferences/tv.sonarr.Sonarr.plist",
  ]
end
