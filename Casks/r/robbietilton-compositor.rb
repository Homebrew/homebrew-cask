cask "robbietilton-compositor" do
  version "1.3.3"
  sha256 "eff1dc089567700f15390aa5f2c8474ccbeb98d94cd47c2bee4506cc0b84fd12"

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
