cask "lidarr" do
  arch arm: "arm64", intel: "x64"

  version "2.13.3.4711"
  sha256 arm:   "2d302b9537196033aaf7a3dfa4e4f307e5b323cef1035fb399f0df293710b2dc",
         intel: "d265409e1d769c85d04785f2a967779a7ee2dd0734c416c6761eca35a64998a2"

  url "https://github.com/lidarr/Lidarr/releases/download/v#{version}/Lidarr.master.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/lidarr/Lidarr/"
  name "Lidarr"
  desc "Looks and smells like Sonarr but made for music"
  homepage "https://lidarr.audio/"

  livecheck do
    url "https://lidarr.servarr.com/v1/update/master/changes?os=osx&arch=#{arch}"
    strategy :json do |json|
      json.map { |item| item["version"] }
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Lidarr.app"

  zap trash: "~/.config/Lidarr/"
end
