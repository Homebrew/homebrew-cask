cask "sonarr" do
  version "3.0.6.1335"
  sha256 "3d7363cb9c0214885c71d4a5b1375a065d60beea103d2a40c4a04fd82e4d62c6"

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
