cask "shutter-encoder" do
  arch arm: "Apple Silicon", intel: "Mac 64bits"

  version "18.0"
  sha256 arm:   "94cc9e2a350390cdf8c176a78a820de5da92f64d0ca5a6d826a0c016897ccba2",
         intel: "2b417a9f392cc68639ecc39cd526a52275fd69304725ea073f184855360a4ca8"

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
