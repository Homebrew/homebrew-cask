cask "shutter-encoder" do
  version "15.1"

  if Hardware::CPU.intel?
    sha256 "6814074ce93509dec63b6659838df6406c89968a1b728fa46818ddaeb0c3cb23"

    url "https://www.shutterencoder.com/Shutter%20Encoder%20#{version}%20Mac%2064bits.pkg"

    pkg "Shutter Encoder #{version} Mac 64bits.pkg"
  else
    sha256 "480cff5127b978af40ea7538bb934a72f77deb58ca87efc30147d366a88850f9"

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
