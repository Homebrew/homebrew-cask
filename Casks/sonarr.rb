cask "sonarr" do
  version "3.0.9.1549"
  sha256 "599b9e2fe8079bb4bc504aae2597c8f04e651c85e2eb7eb2af8aa90d30ee4781"

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
