cask "shutter-encoder" do
  version "15.2"

  if Hardware::CPU.intel?
    sha256 "1a0dfe88e252a82827c69a0797c53ad4a5bd6c1266a90fadc9dcec7a04bcd951"

    url "https://www.shutterencoder.com/Shutter%20Encoder%20#{version}%20Mac%2064bits.pkg"

    pkg "Shutter Encoder #{version} Mac 64bits.pkg"
  else
    sha256 "866e5ee65ec474cb98f2776917fa78e293ac12c208a39bd4c7e847f7a3b3f93f"

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
