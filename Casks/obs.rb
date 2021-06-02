cask "obs" do
  version "27.0"
  sha256 "6c6adbb4406964a79dafe043b8a91291078208a442c3937b55910583b9220b50"

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
