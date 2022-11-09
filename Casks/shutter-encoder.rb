cask "shutter-encoder" do
  arch arm: "Apple Silicon", intel: "Mac 64bits"

  version "16.5"
  sha256 arm:   "9790a3dc1101a93bd83762919dc6f0f792c7d621d0f2798bc3529ed8a8d19a6e",
         intel: "097679733bbba128101f57c91dcfe9286910a8bf3559a98aec4c6d445d0470fd"

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
