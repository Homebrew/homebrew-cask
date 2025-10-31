cask "lidarr" do
  arch arm: "arm64", intel: "x64"

  version "3.0.1.4866"
  sha256 arm:   "5bc5c3b99e589501225dd006042776304b80fab7f7f50a0f79456f9bea638125",
         intel: "9a392c255e25e5bff04c9c04f96141a43a7bcc46058032208e141660b07f6aa6"

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
