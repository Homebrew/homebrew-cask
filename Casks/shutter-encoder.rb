cask "shutter-encoder" do
  arch arm: "Apple Silicon", intel: "Mac 64bits"

  version "16.9"
  sha256 arm:   "10a1162cd20b5f5a298ce8dce8b09e7d75e4ca14f089beaaf724d9cf2bfc21d9",
         intel: "440de258e28dc0be245d25afa2eed7931c7d97c0de170647f4b7c7bee4936b3e"

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
end
