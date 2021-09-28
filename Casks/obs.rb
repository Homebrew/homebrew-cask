cask "obs" do
  version "27.1"
  sha256 "e27484356084f1a824b2d078cd008cb7460d49aa0df9f1bc5eb3675996185707"

  url "https://cdn-fastly.obsproject.com/downloads/obs-mac-#{version}.dmg"
  name "OBS"
  desc "Open-source software for live streaming and screen recording"
  homepage "https://obsproject.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/obs-mac-(\d+(?:\.\d+)*)\.dmg}i)
  end

  auto_updates true

  app "OBS.app"

  zap trash: [
    "/Library/CoreMediaIO/Plug-Ins/DAL/obs-mac-virtualcam.plugin",
    "~/Library/Application Support/obs-studio",
    "~/Library/Preferences/com.obsproject.obs-studio.plist",
    "~/Library/Saved Application State/com.obsproject.obs-studio.savedState",
  ]
end
