cask "imageoptim" do
  version "1.8.8"
  sha256 "f48ce652b8cbf0186e3a550d1dcd0ab81366d0662a3f01621d4cadd4af23cce3"

  url "https://imageoptim.com/ImageOptim#{version}.tar.bz2"
  appcast "https://imageoptim.com/appcast.xml"
  name "ImageOptim"
  desc "Tool to optimize images to a smaller size"
  homepage "https://imageoptim.com/mac"

  auto_updates true

  app "ImageOptim.app"

  zap trash: [
    "~/Library/Caches/net.pornel.ImageOptim",
    "~/Library/Caches/ImageOptimResults.db",
    "~/Library/Preferences/net.pornel.ImageOptim.plist",
    "~/Library/Saved Application State/net.pornel.ImageOptim.savedState",
  ]
end
