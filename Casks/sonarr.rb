cask "sonarr" do
  version "3.0.10.1566"
  sha256 "8e8353f8d2fdc20a067247e87c774718fa1c76ce20d4ef46868cb461028d5b4e"

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
