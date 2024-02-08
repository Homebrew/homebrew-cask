cask "shutter-encoder" do
  arch arm: "Apple Silicon", intel: "Mac 64bits"

  version "17.9"
  sha256 arm:   "d0bcfc9ed58a4cbab2250ced8ae08cec3b91137dc83f1578491536add906483f",
         intel: "14811208da0ca1f49a493cb9e4a18c5aaf1db130ef4711f5bbb6b4666ad2aa64"

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
