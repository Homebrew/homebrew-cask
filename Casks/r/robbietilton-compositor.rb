cask "robbietilton-compositor" do
  version "1.4.8"
  sha256 "c0a33fc100619978b7a7fe27ab26c9b41d39202666edf73f246ce1d25c9b0f9b"

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
