cask "robbietilton-compositor" do
  version "1.7.2"
  sha256 "87de73b9f7e8c1ee7594f99ff6d78d1a8ccd5c483f833b92eb15afa77bd989a3"

  url "https://github.com/robbietilton/Compositor/releases/download/v#{version}/Compositor.dmg"
  name "Compositor"
  desc "Photoshop alternative"
  homepage "https://robbietilton.com/compositor"

  conflicts_with cask: "compositor"
  depends_on macos: :tahoe

  app "Compositor.app"

  uninstall quit: "com.wonderassembly.compositor"

  zap trash: [
    "~/Library/Application Scripts/com.wonderassembly.compositor",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.wonderassembly.compositor.sfl*",
    "~/Library/Application Support/Compositor",
    "~/Library/Containers/com.wonderassembly.compositor",
    "~/Library/Preferences/com.robbietilton.Compositor.plist",
  ]
end
