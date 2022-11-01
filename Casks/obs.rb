cask "obs" do
  arch arm: "arm64", intel: "x86_64"

  version "28.1.0"
  sha256 arm:   "70b60b8f7d8bfe7f6858e56d5f41e8afedd11f129275d83abad5abb8ff7042ee",
         intel: "22d7aaf9c8fce386e29f6d4c04ff9902d49c3ca52130b258eba97bd239b5ed1f"

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
