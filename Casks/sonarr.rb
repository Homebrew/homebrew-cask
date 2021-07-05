cask "sonarr" do
  version "3.0.6.1266"
  sha256 "536b8149bd8b874476d92e08cd49e9b2e41746b7f47d5752c5a3a123cecc0163"

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
