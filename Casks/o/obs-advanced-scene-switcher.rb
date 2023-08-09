cask "obs-advanced-scene-switcher" do
  arch arm: "arm64", intel: "x86_64"

  version "1.23.1"
  sha256 arm:   "a0e525f6948a1eee807e0b2712c029ae43279dd32ff8d9559869426628bee539",
         intel: "b315b8ee4a23b92a0fa0d2382be52fec7e266a4bdd532d207511f3bcd2162fbf"

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
