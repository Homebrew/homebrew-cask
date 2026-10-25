cask "robbietilton-compositor" do
  version "1.5.9"
  sha256 "4deae3459334b937b0015cfb51afb5f7a1d052c4c4bb250f271a32df7cecde3e"

  url "https://github.com/robbietilton/Compositor/releases/download/v#{version}/Compositor.dmg"
  name "Compositor"
  desc "Photoshop alternative"
  homepage "https://robbietilton.com/compositor"

  conflicts_with cask: "compositor"
  depends_on macos: :tahoe

  app "Compositor.app"

  uninstall quit: "com.wonderassembly.compositor"

  zap trash: [
    "~/Library/Application Support/Compositor",
    "~/Library/Preferences/com.robbietilton.Compositor.plist",
  ]
end
