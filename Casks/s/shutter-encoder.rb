cask "shutter-encoder" do
  arch arm: "Apple Silicon", intel: "Mac 64bits"

  version "17.8"
  sha256 arm:   "ac6dd034a423ac84aeee5cfe600336483313bd55e5ba0d94cfc465264a1c41b4",
         intel: "6a3fd91b2abfd9de44763bb4517961a5c9bdcb24182e72461cc1d412054190dc"

  url "https://www.shutterencoder.com/Shutter%20Encoder%20#{version}%20#{arch.gsub(" ", "%20")}.pkg"
  name "Shutter Encoder"
  desc "Video, audio and image converter"
  homepage "https://www.shutterencoder.com/"

  livecheck do
    url "https://www.shutterencoder.com/changelog.txt"
    regex(/^\s*Version\s*(\d+(?:\.\d+)+)/i)
  end

  pkg "Shutter Encoder #{version} #{arch}.pkg"

  uninstall launchctl: "application.com.paulpacifico.shutterencoder.*",
            quit:      "com.paulpacifico.shutterencoder",
            pkgutil:   "com.paulpacifico.shutterencoder"

  zap trash: "~/Documents/Shutter Encoder"
end
