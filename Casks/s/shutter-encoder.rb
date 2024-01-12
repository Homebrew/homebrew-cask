cask "shutter-encoder" do
  arch arm: "Apple Silicon", intel: "Mac 64bits"

  version "17.8"
  sha256 arm:   "ac6dd034a423ac84aeee5cfe600336483313bd55e5ba0d94cfc465264a1c41b4",
         intel: "8512788704f63fdcfd62f7985293c6aad732a2a7ffae7077b7a4d012516c02c6"

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
