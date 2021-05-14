cask "shutter-encoder" do
  version "15.0"

  if Hardware::CPU.intel?
    sha256 "35840dcf6c4fcf8f3970c6a5bc03ebfb5c26a63320686e892164832ea609d5b4"

    url "https://www.shutterencoder.com/Shutter%20Encoder%20#{version}%20Mac%2064bits.pkg"
    pkg "Shutter Encoder #{version} Mac 64bits.pkg"
  else
    sha256 "b65c42574b846a7bef052b28b459c4e0acc1c43ddd0147732dbd177580330f34"

    url "https://www.shutterencoder.com/Shutter%20Encoder%20#{version}%20Apple%20Silicon.pkg"
    pkg "Shutter Encoder #{version} Apple Silicon.pkg"
  end

  name "Shutter Encoder"
  desc "Video, audio and image converter"
  homepage "https://www.shutterencoder.com/"

  livecheck do
    url "https://www.shutterencoder.com/changelog.txt"
    regex(/Version\s*(\d+(?:\.\d+)*)\s*-/i)
  end

  uninstall pkgutil: "com.paulpacifico.pkg.ShutterEncoder"
end
