cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.24.1.10017"
  sha256 arm:   "9223fa1a6e346ad49619b7f42366def114c4aeae0b06ba8248f7977911561f56",
         intel: "05fb759d321298c0a96659cb770930b741b8e6674d6858c97403f75a3154e913"

  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.master.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Radarr/Radarr/"
  name "Radarr"
  desc "Fork of Sonarr to work with movies à la Couchpotato"
  homepage "https://radarr.video/"

  livecheck do
    url "https://radarr.servarr.com/v1/update/master/changes?os=osx&arch=#{arch}"
    strategy :json do |json|
      json.map { |item| item["version"] }
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Radarr.app"

  zap trash: "~/.config/Radarr"
end
