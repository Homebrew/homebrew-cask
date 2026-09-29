cask "robbietilton-compositor" do
  version "1.4.1"
  sha256 "2de4ae91fd85196212351a48457f7ab2bfcc4a3c25527d352e839d7ba6d161f6"

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
