cask "sonarr" do
  version "3.0.6.1266"
  sha256 "95e524ee6e324cc8a2dd8721d917bd8315cc543f5106e72c6deb7649eb0d07e5"

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
