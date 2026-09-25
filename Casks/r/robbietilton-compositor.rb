cask "robbietilton-compositor" do
  version "1.3"
  sha256 "0fa75b833bb33a32897ef316a335df9053eb7bc3eedb50f5124e5dc8e391f4de"

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
