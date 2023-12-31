cask "sonarr" do
  arch arm: "arm64", intel: "x64"

  version "4.0.0.741"
  sha256 arm:   "f3fb5837df392d20e672fb79ff8c5f7004a0ff868be23e84bcf4d3e856f6f9c5",
         intel: "8f1688ccad85eee915afd1572310f7848ef89f581295be334ef7d251263fea92"

  url "https://download.sonarr.tv/v#{version.major}/main/#{version}/Sonarr.main.#{version}.osx-#{arch}-app.zip"
  name "Sonarr"
  desc "PVR for Usenet and BitTorrent users"
  homepage "https://sonarr.tv/"

  livecheck do
    url "https://download.sonarr.tv/v4/main/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Sonarr.app"

  zap trash: "~/.config/Sonarr"
end
