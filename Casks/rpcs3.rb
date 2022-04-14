cask "rpcs3" do
  version "0.0.21-13439"
  sha256 "7bbcebdbd09abd8b800727f8787a55883e12ec6699cf698f2b7da2346e6608b5"

  url "https://github.com/RPCS3/rpcs3-binaries-mac/releases/download/build-57aee92bfe975a52ba756196cabe68ad45e22ffb/rpcs3-v#{version}-57aee92b_macos.dmg",
      verified: "github.com/RPCS3/rpcs3-binaries-mac/"
  name "RPCS3"
  desc "The Open-source PlayStation 3 Emulator"
  homepage "https://rpcs3.net"

  auto_updates true

  app "RPCS3.app"
end
