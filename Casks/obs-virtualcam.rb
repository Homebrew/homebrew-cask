cask "obs-virtualcam" do
  version "1.2.1,4bd5852"
  sha256 "0c5f03b502c3ab3dd1dffe6d51604f8eb8e5c277d41e965f4b3d378f87796646"

  url "https://github.com/johnboiles/obs-mac-virtualcam/releases/download/v#{version.before_comma}/obs-mac-virtualcam-#{version.after_comma}-v#{version.before_comma}.pkg"
  appcast "https://github.com/johnboiles/obs-mac-virtualcam/releases.atom"
  name "OBS Virtual Camera"
  homepage "https://github.com/johnboiles/obs-mac-virtualcam"

  depends_on macos: ">= :high_sierra"

  pkg "obs-mac-virtualcam-#{version.after_comma}-v#{version.before_comma}.pkg"

  uninstall pkgutil: "com.johnboiles.obs-mac-virtualcam"
end
