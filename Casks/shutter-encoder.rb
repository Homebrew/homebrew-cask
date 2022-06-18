cask "shutter-encoder" do
  arch = Hardware::CPU.intel? ? "Mac 64bits" : "Apple Silicon"

  version "16.1"

  if Hardware::CPU.intel?
    sha256 "1d473adcde011313701f8290c7ace197331132e3a80763a2da1d2e1c42b7ec23"
  else
    sha256 "9abaa8e23e454f56b0c7be3337721a4ecd6308bc116fef10c72738e0a5123bcf"
  end

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
