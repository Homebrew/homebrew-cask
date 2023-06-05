cask "obs-advanced-scene-switcher" do
  arch arm: "arm64", intel: "x86_64"

  version "1.22.1"
  sha256 arm:   "a94c037078434a99285b4816381179191ef89fdab55b50ccdbc9af59070f95f9",
         intel: "42c556d267e8a9d1531e088f598d12ed1abc6f2be3c13ffb05c4cb8e7ac8ce53"

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
