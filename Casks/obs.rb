cask "obs" do
  arch arm: "arm64", intel: "x86_64"

  version "28.0.2"
  sha256 arm:   "84a1eade1510814eb78f5cff31a3a256361eae36f33defdb70a71b7e7ba6b7a9",
         intel: "bb8b67957389dc52db50c3222a2ce25239eb50cb58e7b5d7ca563810cff3e063"

  url "https://cdn-fastly.obsproject.com/downloads/obs-studio-#{version}-macos-#{arch}.dmg"
  name "OBS"
  desc "Open-source software for live streaming and screen recording"
  homepage "https://obsproject.com/"

  livecheck do
    url "https://obsproject.com/download/"
    regex(%r{href=.*?/obs[._-]studio[._-]v?(\d+(?:\.\d+)+).*?\.dmg}i)
  end

  auto_updates true
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
