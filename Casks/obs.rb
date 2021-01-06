cask "obs" do
  version "26.1.1"
  sha256 "d3688312d8dd842ab0e31b7a829002a5c533a0e2d84bd4ac030feaeb1ecf7ae1"

  url "https://cdn-fastly.obsproject.com/downloads/obs-mac-#{version}.dmg"
  appcast "https://github.com/obsproject/obs-studio/releases.atom"
  name "OBS"
  desc "Open-source software for live streaming and screen recording"
  homepage "https://obsproject.com/"

  auto_updates true

  app "OBS.app"

  zap trash: [
    "/Library/CoreMediaIO/Plug-Ins/DAL/obs-mac-virtualcam.plugin",
    "~/Library/Application Support/obs-studio",
    "~/Library/Preferences/com.obsproject.obs-studio.plist",
    "~/Library/Saved Application State/com.obsproject.obs-studio.savedState",
  ]
end
