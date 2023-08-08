cask "shutter-encoder" do
  arch arm: "Apple Silicon", intel: "Mac 64bits"

  version "17.3"
  sha256 arm:   "5b54041a89c5d0722d3699cb74693a5ee1bde7cf6919f0705583df360bc02f9d",
         intel: "18ba3e897cc20a12aac0ec50fe8e9fb8ada1b87afae9715f4bf536077ac28d85"

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
