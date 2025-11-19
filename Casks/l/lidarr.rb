cask "lidarr" do
  arch arm: "arm64", intel: "x64"

  version "3.1.0.4875"
  sha256 arm:   "60236378eb5645fc217e2dfa6303558f1a2db8b5672c6332fd9ae30966ccbd26",
         intel: "8450993360e485fc083204a84726fb002b6dfac54c29d583f8d4a22c3a59cf30"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

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
