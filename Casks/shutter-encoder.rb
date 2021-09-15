cask "shutter-encoder" do
  version "15.3"

  if Hardware::CPU.intel?
    sha256 "69ab4dbd93dbb503d2f747dc4c5e3ec260b16510667692c97340424e9f1c74a0"

    url "https://www.shutterencoder.com/Shutter%20Encoder%20#{version}%20Mac%2064bits.pkg"

    pkg "Shutter Encoder #{version} Mac 64bits.pkg"
  else
    sha256 "595cf04c336dde6104d9b04a5e1cbfe92d31457c2b717a23f86024a7bc17f589"

    url "https://www.shutterencoder.com/Shutter%20Encoder%20#{version}%20Apple%20Silicon.pkg"

    pkg "Shutter Encoder #{version} Apple Silicon.pkg"
  end

  name "Shutter Encoder"
  desc "Video, audio and image converter"
  homepage "https://www.shutterencoder.com/"

  livecheck do
    url "https://www.shutterencoder.com/changelog.txt"
    regex(/^\s*Version\s*(\d+(?:\.\d+)*)/i)
  end

  uninstall pkgutil: "com.paulpacifico.shutterencoder",
            quit:    "com.paulpacifico.shutterencoder"
end
