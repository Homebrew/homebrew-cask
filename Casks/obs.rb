cask "obs" do
  version "27.2"
  sha256 "116258e73c7943149c1454d24bdaf269f708b18fd2c24f57b62c99fa42ed841c"

  url "https://cdn-fastly.obsproject.com/downloads/obs-mac-#{version}.dmg"
  name "OBS"
  desc "Open-source software for live streaming and screen recording"
  homepage "https://obsproject.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/obs[._-]mac[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  auto_updates true

  app "OBS.app"

  uninstall delete: "/Library/CoreMediaIO/Plug-Ins/DAL/obs-mac-virtualcam.plugin"

  zap trash: [
    "~/Library/Application Support/obs-studio",
    "~/Library/Preferences/com.obsproject.obs-studio.plist",
    "~/Library/Saved Application State/com.obsproject.obs-studio.savedState",
  ]
end
