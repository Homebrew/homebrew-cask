cask "artcraft" do
  version "0.41.0"
  sha256 "3cf1df2e56345e603c5d0180e5b563dd5eca25d9e3c3959d9554012f510916c1"

  url "https://github.com/storytold/artcraft/releases/download/artcraft-v#{version}/ArtCraft_#{version}_universal.dmg"
  name "ArtCraft"
  desc "Video crafting engine"
  homepage "https://getartcraft.com/"

  livecheck do
    url :url
    regex(/^artcraft-v(\d+(?:\.\d+)+)$/i)
  end

  depends_on :macos

  app "ArtCraft.app"

  zap trash: [
    "~/Artcraft/artcraft_debug.log",
    "~/Artcraft/credentials",
    "~/Artcraft/settings",
    "~/Artcraft/state",
    "~/Artcraft/temp",
    "~/Library/Caches/ai.artcraft.app",
    "~/Library/Logs/ai.artcraft.app",
  ]
end
