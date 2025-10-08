cask "lidarr" do
  arch arm: "arm64", intel: "x64"

  version "2.14.5.4836"
  sha256 arm:   "814d670adb7ba425263d9d0ec866552a1ec1a62c4d3f6fc0e7d1a8597a5aa1db",
         intel: "09e632b99ced28730da1a199b59a4e6d03e4efed3bd94cc1be6d819e84905af9"

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

  app "Lidarr.app"

  zap trash: "~/.config/Lidarr/"
end
