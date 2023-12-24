cask "shutter-encoder" do
  arch arm: "Apple Silicon", intel: "Mac 64bits"

  version "17.7"
  sha256 arm:   "7643715d25ed9c06800f244e9dd6bb7e920350e0ee15c17dbbe009d79dbb44e0",
         intel: "088c3763013079e22af45bd4d23c00269a8b3ff4a457d7c8951d80c3f08baab2"

  url "https://www.shutterencoder.com/Shutter%20Encoder%20#{version}%20#{arch.gsub(" ", "%20")}.pkg"
  name "Shutter Encoder"
  desc "Video, audio and image converter"
  homepage "https://www.shutterencoder.com/"

  livecheck do
    url "https://www.shutterencoder.com/changelog.txt"
    regex(/^\s*Version\s*(\d+(?:\.\d+)+)/i)
  end

  pkg "Shutter Encoder #{version} #{arch}.pkg"

  uninstall launchctl: "application.com.paulpacifico.shutterencoder.*",
            quit:      "com.paulpacifico.shutterencoder",
            pkgutil:   "com.paulpacifico.shutterencoder"

  zap trash: "~/Documents/Shutter Encoder"
end
