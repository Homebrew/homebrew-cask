cask "obs" do
  arch arm: "arm64", intel: "x86_64"

  version "29.0.2"
  sha256 arm:   "8092dd2945114fc017c12d2670d97e7a518aab42f405fbad26bc2e227c1a156c",
         intel: "9d49e6bf4eafa7ca885043888b1292dba70a6958240a7fe9fbf144716f77c14e"

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
  binary "#{appdir}/OBS.app/Contents/MacOS/OBS", target: "obs"

  uninstall delete: "/Library/CoreMediaIO/Plug-Ins/DAL/obs-mac-virtualcam.plugin"

  zap trash: [
    "~/Library/Application Support/obs-studio",
    "~/Library/HTTPStorages/com.obsproject.obs-studio",
    "~/Library/Preferences/com.obsproject.obs-studio.plist",
    "~/Library/Saved Application State/com.obsproject.obs-studio.savedState",
  ]
end
