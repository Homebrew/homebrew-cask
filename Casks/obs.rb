cask "obs" do
  arch arm: "arm64", intel: "x86_64"

  version "28.1.1"
  sha256 arm:   "8f6ab91f087049d91ba5aa386957dc1f8cb19138f8c3258e79e9b52c3f630620",
         intel: "dfcd31edc8df20aa1dc29929bea309d2070e3de3c89d90ba1344b5d649431cad"

  url "https://cdn-fastly.obsproject.com/downloads/obs-studio-#{version}-macos-#{arch}.dmg"
  name "OBS"
  desc "Open-source software for live streaming and screen recording"
  homepage "https://obsproject.com/"

  livecheck do
    url "https://obsproject.com/download/"
    regex(%r{href=.*?/obs[._-]studio[._-]v?(\d+(?:\.\d+)+).*?\.dmg}i)
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/obs-beta"
  depends_on macos: ">= :catalina"

  app "OBS.app"

  uninstall delete: "/Library/CoreMediaIO/Plug-Ins/DAL/obs-mac-virtualcam.plugin"

  zap trash: [
    "~/Library/Application Support/obs-studio",
    "~/Library/HTTPStorages/com.obsproject.obs-studio",
    "~/Library/Preferences/com.obsproject.obs-studio.plist",
    "~/Library/Saved Application State/com.obsproject.obs-studio.savedState",
  ]
end
