cask "shutter-encoder" do
  arch arm: "Apple Silicon", intel: "Mac 64bits"

  version "20.2"
  sha256 :no_check # required as upstream package is updated in-place

  artifact = on_system_conditional linux: "Shutter Encoder #{version} Linux 64bits.AppImage",
                                   macos: "Shutter Encoder #{version} #{arch}.pkg"

  url "https://www.shutterencoder.com/#{artifact.gsub(" ", "%20")}"
  name "Shutter Encoder"
  desc "Video, audio and image converter"
  homepage "https://www.shutterencoder.com/"

  livecheck do
    url "https://www.shutterencoder.com/changelog.txt"
    regex(/^\s*Version\s*(\d+(?:\.\d+)+)/i)
  end

  on_macos do
    depends_on macos: :big_sur

    pkg artifact

    uninstall launchctl: "application.com.paulpacifico.shutterencoder.*",
              quit:      "com.paulpacifico.shutterencoder",
              pkgutil:   "com.paulpacifico.shutterencoder",
              delete:    "/Applications/Shutter Encoder.app"

    zap trash: "~/Documents/Shutter Encoder"
  end

  on_linux do
    depends_on arch: :x86_64
    app_image artifact, target: "Shutter Encoder.AppImage"
  end
end
