cask "shutter-encoder" do
  arch arm: "Apple Silicon", intel: "Mac 64bits"

  version "17.1"
  sha256 arm:   "6a3c3a096bd43080dd85f97f3f8cfdb49f5454f326b8a04db016e6cb8d124a4c",
         intel: "4a00f722050bd96ca2dfb20acbdffd2dca6c455427860aeacb400848372f2467"

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
