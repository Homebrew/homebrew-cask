cask "lidarr" do
  arch arm: "arm64", intel: "x64"

  version "2.11.2.4629"
  sha256 arm:   "86c847b1f09968fa2439fec46c427a43745a6e590f3d7dc9b6e936a169f73cd1",
         intel: "3131ea0e0712c0a3ebf00d37504be43fd566f5334539a15f3bc9327a64491008"

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

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Lidarr.app"

  zap trash: "~/.config/Lidarr/"
end
