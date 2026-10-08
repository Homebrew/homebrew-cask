cask "robbietilton-compositor" do
  version "1.4.7"
  sha256 "5a751245d0cd625b8382410d800c2ca54c0b061c9e3ed23509f6ea660232f5ee"

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
