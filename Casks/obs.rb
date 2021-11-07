cask "obs" do
  version "27.1.3"
  sha256 "efb1dce8d43ae2dbb1e0be8514c808b30d4e9191cc9a6dfc015534861f80ba43"

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
