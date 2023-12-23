cask "droidcam-obs" do
  version "2.3.0"
  sha256 "6ab3836026afadeab2780306b550d7b01e7abe649b3ecac9b34d37bb2e3c16b2"

  url "https://github.com/dev47apps/droidcam-obs-plugin/releases/download/#{version}/DroidCamOBS_#{version}_macos.pkg",
      verified: "github.com/dev47apps/droidcam-obs-plugin/"
  name "DroidCam OBS"
  desc "Use your phone as a camera directly in OBS Studio"
  homepage "https://www.dev47apps.com/obs/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on cask: "obs"

  pkg "DroidCamOBS_#{version}_macos.pkg"

  uninstall pkgutil: "com.dev47apps.droidcamobs",
            delete:  "/Library/Application Support/obs-studio/plugins/droidcam-obs",
            rmdir:   "/Library/Application Support/obs-studio/plugins"

  # No zap stanza required
end
