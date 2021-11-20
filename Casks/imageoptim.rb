cask "imageoptim" do
  version "1.8.8"
  sha256 :no_check

  url "https://imageoptim.com/ImageOptim.tbz2"
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
