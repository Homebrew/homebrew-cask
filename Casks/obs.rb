cask "obs" do
  version "26.0.1"
  sha256 "2b88e3bee1dc74180fa9bbfdfa58ac4dbbf63079327a9811cf6cf876651741f9"

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
