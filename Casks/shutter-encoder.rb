cask "shutter-encoder" do
  arch = Hardware::CPU.intel? ? "64bits" : "Silicon"

  version "15.7"

  if Hardware::CPU.intel?
    sha256 "14bf5c1eb5f6979d1975fe1977cc57ec06515c07937da1c92ca458826037d449"
  else
    sha256 "4a39a50b7b7e4e601b1d4f11ff5e9959f39c8651d5533c962af6d52ce2f0ad1b"
  end

  url "https://www.shutterencoder.com/Shutter%20Encoder%20#{version}%20Mac%20#{arch}.pkg"
  name "Shutter Encoder"
  desc "Video, audio and image converter"
  homepage "https://www.shutterencoder.com/"

  livecheck do
    url "https://www.shutterencoder.com/changelog.txt"
    regex(/^\s*Version\s*(\d+(?:\.\d+)+)/i)
  end

  pkg "Shutter Encoder #{version} Mac #{arch}.pkg"

  uninstall pkgutil: "com.paulpacifico.shutterencoder",
            quit:    "com.paulpacifico.shutterencoder"
end
