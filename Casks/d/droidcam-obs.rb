cask "droidcam-obs" do
  version "2.5.0"
  sha256 "7dc20834247c90a208eb8a4199e8e133162c1660e69ab20fdf193d84df254588"

  url "https://github.com/dev47apps/droidcam-obs-plugin/releases/download/#{version}/DroidCamOBS_#{version}_macos.pkg",
      verified: "github.com/dev47apps/droidcam-obs-plugin/"
  name "DroidCam OBS"
  desc "Use your phone as a camera directly in OBS Studio"
  homepage "https://www.dev47apps.com/obs/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos
  depends_on cask: "obs"

  pkg "DroidCamOBS_#{version}_macos.pkg"

  uninstall pkgutil: "com.dev47apps.droidcamobs",
            delete:  "/Library/Application Support/obs-studio/plugins/droidcam-obs",
            rmdir:   "/Library/Application Support/obs-studio/plugins"

  # No zap stanza required
end
