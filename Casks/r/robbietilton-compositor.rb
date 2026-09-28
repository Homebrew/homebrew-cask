cask "robbietilton-compositor" do
  version "1.3.7"
  sha256 "200c276ffbab6c12cb533ace0bbe6890e5bc78dddc0c04d8cbec9354c22a3558"

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
