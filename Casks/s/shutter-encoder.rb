cask "shutter-encoder" do
  arch arm:   "Apple Silicon",
       intel: on_system_conditional(macos: "Mac 64bits", linux: "Linux 64bits")
  os macos: "pkg", linux: "AppImage"

  version "20.3"
  sha256 :no_check # required as upstream package is updated in-place

  on_macos do
    depends_on macos: :big_sur

    pkg "Shutter Encoder #{version} #{arch}.pkg"

    uninstall launchctl: "application.com.paulpacifico.shutterencoder.*",
              quit:      "com.paulpacifico.shutterencoder",
              pkgutil:   "com.paulpacifico.shutterencoder",
              delete:    "/Applications/Shutter Encoder.app"

    zap trash: "~/Documents/Shutter Encoder"
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Shutter Encoder #{version} #{arch}.AppImage", target: "Shutter Encoder.AppImage"
  end

  artifact = "Shutter Encoder #{version} #{arch}.#{os}"

  url "https://www.shutterencoder.com/#{artifact.gsub(" ", "%20")}"
  name "Shutter Encoder"
  desc "Video, audio and image converter"
  homepage "https://www.shutterencoder.com/"

  livecheck do
    url "https://www.shutterencoder.com/changelog.txt"
    regex(/^\s*Version\s*(\d+(?:\.\d+)+)/i)
  end
end
