cask "robbietilton-compositor" do
  version "1.4.5"
  sha256 "681524b986781730f7023756a3f41f26fdad12abee9242c255be966bb458cb63"

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
