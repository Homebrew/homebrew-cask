cask "robbietilton-compositor" do
  version "1.5.12"
  sha256 "dd5a747d4ca4d1800968d3e1c7d4d44039a1366b49e890fbb6644d9d9ff3ebb1"

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
