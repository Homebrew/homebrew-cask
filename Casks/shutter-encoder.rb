cask "shutter-encoder" do
  arch arm: "Apple Silicon", intel: "Mac 64bits"

  version "17.2"
  sha256 arm:   "206ed65de0c9b1c2d9155a823f101016af3e9d0034a15cf3702d0f6bd9a7d58b",
         intel: "6dddf9728d5fabdc296d3b2516dc35f3a8bcbd29b28754f4cbcf6de0a54553ab"

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
            pkgutil:   "com.paulpacifico.shutterencoder",
            quit:      "com.paulpacifico.shutterencoder"

  zap trash: "~/Documents/Shutter Encoder"
end
