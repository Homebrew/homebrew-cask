cask "shutter-encoder" do
  arch arm: "Apple Silicon", intel: "Mac 64bits"

  version "17.0"
  sha256 arm:   "6da7423e39dc6a7b189499799d98be31259e11380a3573f7bb8e0ea3ef1ee737",
         intel: "b13d91345f7545c39c6fe30fdb3abee8a19cc6bfa08f885940015e22dd150355"

  url "https://www.shutterencoder.com/Shutter%20Encoder%20#{version}%20#{arch.gsub(" ", "%20")}.pkg"
  name "Shutter Encoder"
  desc "Video, audio and image converter"
  homepage "https://www.shutterencoder.com/"

  livecheck do
    url "https://www.shutterencoder.com/changelog.txt"
    regex(/^\s*Version\s*(\d+(?:\.\d+)+)/i)
  end

  pkg "Shutter Encoder #{version} #{arch}.pkg"

  uninstall pkgutil: "com.paulpacifico.shutterencoder",
            quit:    "com.paulpacifico.shutterencoder"

  zap trash: "~/Documents/Shutter Encoder"
end
