cask "shutter-encoder" do
  arch = Hardware::CPU.intel? ? "64bits" : "Silicon"

  version "15.8"

  if Hardware::CPU.intel?
    sha256 "eecf6f051e0394dad36730f144fb4db32a97fa0445f32cee7d0a9a2312db2681"
  else
    sha256 "b83fad1687a8bd1da4fb168193b2d1ca8d49c15bea43253be47acc52b08fee3b"
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
