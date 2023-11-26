cask "obs-advanced-scene-switcher" do
  arch arm: "arm64", intel: "x86_64"

  version "1.24.0"
  sha256 arm:   "e136b950798855c044336d253d0aa8a2105eb54f6afbe3891b8916397c37d112",
         intel: "8e769589fa26f45e87a2ae68a91756d21a40e2ff87c8a8ef8540c329f387de86"

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
