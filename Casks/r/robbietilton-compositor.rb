cask "robbietilton-compositor" do
  version "1.8.1"
  sha256 "1809da5079341d1a99572e90502944420a2592881b600aa9ed8eb836f6d13138"

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
