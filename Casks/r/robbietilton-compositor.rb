cask "robbietilton-compositor" do
  version "1.4.6"
  sha256 "9c8ce0f8f4f936a2a044215f3966045d8f8b346db0906b55b66173f60fc1ba46"

  url "https://github.com/robbietilton/Compositor/releases/download/v#{version}/Compositor.dmg"
  name "Compositor"
  desc "Photoshop alternative"
  homepage "https://github.com/robbietilton/Compositor"

  depends_on macos: :tahoe

  app "Compositor.app"

  zap trash: [
    "~/Library/Application Support/Compositor",
    "~/Library/Preferences/com.robbietilton.Compositor.plist",
  ]
end
