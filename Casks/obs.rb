cask "obs" do
  version "27.0.1"
  sha256 "f4f07aa51842e88743c662a8648a4b187d43d704398cdecc2cbb3d2dac1e39d9"

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
