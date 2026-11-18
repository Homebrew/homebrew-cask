cask "files-remote" do
  version "1.0.2"
  sha256 "5647a6672511498d61c94a68d5b8e9cbd4a35d52316daa2945af7223b74b27a1"

  url "https://www.ntwind.com/files/FilesRemote_#{version}-mac.dmg"
  name "Files Remote"
  desc "Browse shared folders on computers over a local network"
  homepage "https://www.ntwind.com/remote/files.html"

  livecheck do
    url "https://www.ntwind.com/download/FilesRemote_latest-mac.dmg"
    strategy :header_match
    regex(/FilesRemote[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  depends_on :macos

  app "Files Remote.app"

  uninstall quit: "com.ntwind.remote.files"

  zap trash: [
    "~/Library/Application Scripts/com.ntwind.remote.files",
    "~/Library/Application Scripts/com.ntwind.remote.files-LaunchAtLoginHelper",
    "~/Library/Containers/com.ntwind.remote.files",
    "~/Library/Containers/com.ntwind.remote.files-LaunchAtLoginHelper",
  ]
end
