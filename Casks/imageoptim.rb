cask "imageoptim" do
  version "1.9.0"
  sha256 "39357b55661ab39f7abdd56df2d34d030d9f27f2fde1041c54f4f039fdca0897"

  url "https://imageoptim.com/ImageOptim#{version}.tar.xz"
  name "ImageOptim"
  desc "Tool to optimize images to a smaller size"
  homepage "https://imageoptim.com/mac"

  livecheck do
    url "https://imageoptim.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "ImageOptim.app"

  zap trash: [
    "~/Library/Caches/net.pornel.ImageOptim",
    "~/Library/Caches/ImageOptimResults.db",
    "~/Library/Preferences/net.pornel.ImageOptim.plist",
    "~/Library/Saved Application State/net.pornel.ImageOptim.savedState",
  ]
end
