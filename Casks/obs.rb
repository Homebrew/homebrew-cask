cask "obs" do
  version "26.0.2"
  sha256 "66855df67a829c8bf1b5e5f7321556e7f9e338f8a95e51ca6afcee349d206ac2"

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
