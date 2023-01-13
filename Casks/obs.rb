cask "obs" do
  arch arm: "arm64", intel: "x86_64"

  version "29.0.0"
  sha256 arm:   "b06753c7398857afc37a7e398a74e92728dfce3d515964ee21a0a9cc32bcc81b",
         intel: "6e8eb451d22d66c7e06cdfcd9b95e0ce91f595994f02b6319d876bd3ee583770"

  url "https://cdn-fastly.obsproject.com/downloads/obs-studio-#{version}-macos-#{arch}.dmg"
  name "OBS"
  desc "Open-source software for live streaming and screen recording"
  homepage "https://obsproject.com/"

  livecheck do
    url "https://obsproject.com/osx_update/stable/updates_#{arch}.xml"
    strategy :sparkle, &:short_version
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
