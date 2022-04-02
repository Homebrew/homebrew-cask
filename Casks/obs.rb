cask "obs" do
  version "27.2.4"
  sha256 "9aeed92816f23fdb4819eb1b0c989c158aaab246e0bd024933429614b06435f2"

  url "https://cdn-fastly.obsproject.com/downloads/obs-mac-#{version}.dmg"
  name "OBS"
  desc "Open-source software for live streaming and screen recording"
  homepage "https://obsproject.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/obs[._-]mac[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "OBS.app"

  uninstall delete: "/Library/CoreMediaIO/Plug-Ins/DAL/obs-mac-virtualcam.plugin"

  zap trash: [
    "~/Library/Application Support/obs-studio",
    "~/Library/HTTPStorages/com.obsproject.obs-studio",
    "~/Library/Preferences/com.obsproject.obs-studio.plist",
    "~/Library/Saved Application State/com.obsproject.obs-studio.savedState",
  ]
end
