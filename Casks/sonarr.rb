cask "sonarr" do
  version "3.0.7.1477"
  sha256 "ab810cb5f72748926b3a418f10bb4d78104d23696933a60e100e863befe8905d"

  url "https://download.sonarr.tv/v#{version.major}/main/#{version}/Sonarr.main.#{version}.macos.zip"
  name "Sonarr"
  desc "PVR for Usenet and BitTorrent users"
  homepage "https://sonarr.tv/"

  livecheck do
    url "https://download.sonarr.tv/v3/main/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  depends_on cask: "mono-mdk"

  app "Sonarr.app"

  preflight do
    set_permissions "#{staged_path}/Sonarr.app", "0755"
  end

  zap trash: [
    "~/Library/Application Support/Sonarr",
    "~/Library/Preferences/tv.sonarr.Sonarr.plist",
    "~/.config/NzbDrone",
  ]
end
