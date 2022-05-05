cask "shutter-encoder" do
  arch = Hardware::CPU.intel? ? "64bits" : "Silicon"

  version "15.9"

  if Hardware::CPU.intel?
    sha256 "8a2cad539a8d8628ad2c86321372ebdfd5291b6a32ff4a9124854e04db9f0ff7"
  else
    sha256 "519c9912396a1e9158b15947718ab31031eb7b5314fa0ee0f74a088a0d4fc248"
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
