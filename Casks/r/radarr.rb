cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "6.1.1.10360"
  sha256 arm:   "9bd107a10eb062876031a73e48cbbcdded8fd4ec25e5c18aeee1094aa80addae",
         intel: "f1c3221352ca728575f8e8019462653713eb9b0d616b011fcdc0e31e4c2b5aa0"

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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Radarr.app"

  zap trash: "~/.config/Radarr"
end
