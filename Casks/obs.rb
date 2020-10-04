cask "obs" do
  version "26.0"
  sha256 "5e10e993591c01a0f39a97f6b884ed3bdc9029d9dedb08ebd01863f435997075"

  url "https://cdn-fastly.obsproject.com/downloads/obs-mac-#{version}.dmg"
  appcast "https://github.com/obsproject/obs-studio/releases.atom"
  name "OBS"
  desc "Open-source software for live streaming and screen recording"
  homepage "https://obsproject.com/"

  auto_updates true

  app "OBS.app"

  zap trash: [
    "~/Library/Application Support/obs-studio",
    "~/Library/Preferences/com.obsproject.obs-studio.plist",
    "~/Library/Saved Application State/com.obsproject.obs-studio.savedState",
  ]
end
