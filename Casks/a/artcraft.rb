cask "artcraft" do
  version "0.41.1"
  sha256 "89009b8983d88919481ac936e2ada0409dff0e0fc73f487cce3e7324699866a6"

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
