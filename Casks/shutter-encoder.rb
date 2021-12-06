cask "shutter-encoder" do
  arch = Hardware::CPU.intel? ? "64bits" : "Silicon"

  version "15.6"

  url "https://www.shutterencoder.com/Shutter%20Encoder%20#{version}%20Mac%20#{arch}.pkg"
  if Hardware::CPU.intel?
    sha256 "b2577a7dc4e9796aa03c7d4fe6ce4077149c933f57b53a9ab16be8c789e71d45"
  else
    sha256 "c244066896720dcc06538f25f794b58e92f7bd1b50ed215f079dde6eed0a81cc"
  end

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
