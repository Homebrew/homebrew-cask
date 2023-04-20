cask "shutter-encoder" do
  arch arm: "Apple Silicon", intel: "Mac 64bits"

  version "17.0"
  sha256 arm:   "6da7423e39dc6a7b189499799d98be31259e11380a3573f7bb8e0ea3ef1ee737",
         intel: "3332dc46aa7d4d67fcd90d73f0ba5e1bf87d658c29591ae378368f2b6afc998c"

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
