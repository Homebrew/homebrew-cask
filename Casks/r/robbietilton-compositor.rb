cask "robbietilton-compositor" do
  version "1.6.9"
  sha256 "ba219104f40aca5f214f821117fd190d6bf8f1f0714e6ea25d9cccc2a1a7036e"

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
