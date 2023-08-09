cask "sonarr" do
  version "3.0.10.1567"
  sha256 "16566295630a50ba483b480a0dbe308f4fdfe55ad90487f5729d05860c1fcd7c"

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

  zap trash: "~/.config/Sonarr"
end
