cask "robbietilton-compositor" do
  version "1.6.14"
  sha256 "e5e07f2824b1766e53f603a9366478d270233dc42986870676b9a0f8992f9248"

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
