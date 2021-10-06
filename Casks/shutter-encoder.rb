cask "shutter-encoder" do
  version "15.5"

  if Hardware::CPU.intel?
    sha256 "7b97d3347cb1031c5335fb8fa413637940905f9eea380a680e0749b3df7315c4"

    url "https://www.shutterencoder.com/Shutter%20Encoder%20#{version}%20Mac%2064bits.pkg"

    pkg "Shutter Encoder #{version} Mac 64bits.pkg"
  else
    sha256 "3371bdf03691cf4785c0236471ada5ca76ce3c84f37a745a976f8bbb78af962f"

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
