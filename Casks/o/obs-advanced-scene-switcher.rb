cask "obs-advanced-scene-switcher" do
  arch arm: "arm64", intel: "x86_64"

  version "1.24.2"
  sha256 arm:   "34a2516e7b279719fb536e792c145bb1445c357df832bb14d942100566875f5f",
         intel: "57b38069018cf4a16ba8a27a98410d1ecfbea5fe6177b136785647fdf5d8e25a"

  url "https://github.com/WarmUpTill/SceneSwitcher/releases/download/#{version}/advanced-scene-switcher-macos-#{arch}.pkg",
      verified: "github.com/WarmUpTill/SceneSwitcher/"
  name "OBS Advanced Scene Switcher"
  desc "Automated scene switcher for OBS Studio"
  homepage "https://obsproject.com/forum/resources/advanced-scene-switcher.395"

  depends_on cask: "obs"

  pkg "advanced-scene-switcher-macos-#{arch}.pkg"

  uninstall pkgutil: "com.warmuptill.advanced-scene-switcher",
            delete:  "/Library/Application Support/obs-studio/plugins/advanced-scene-switcher.plugin",
            rmdir:   "/Library/Application Support/obs-studio/plugins"

  # No zap stanza required
end
