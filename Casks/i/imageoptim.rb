cask "imageoptim" do
  version "1.9.3"
  sha256 "d4e453bbb55b6491d519a30e0e6de5beb7ce1a929e8f835767b638ef6ffd371d"

  url "https://imageoptim.com/ImageOptim#{version}.tar.xz"
  name "ImageOptim"
  desc "Tool to optimise images to a smaller size"
  homepage "https://imageoptim.com/mac"

  livecheck do
    url "https://imageoptim.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "ImageOptim.app"

  zap trash: [
    "~/Library/Caches/ImageOptimResults.db",
    "~/Library/Caches/net.pornel.ImageOptim",
    "~/Library/Preferences/net.pornel.ImageOptim.plist",
    "~/Library/Saved Application State/net.pornel.ImageOptim.savedState",
  ]
end
