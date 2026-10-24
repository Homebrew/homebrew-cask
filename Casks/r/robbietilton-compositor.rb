cask "robbietilton-compositor" do
  version "1.5.8"
  sha256 "dda5ff4937689e260b0515e1b1c08e2f273836700d9907d411a4e47d42e8c409"

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
