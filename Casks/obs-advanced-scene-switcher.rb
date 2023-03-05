cask "obs-advanced-scene-switcher" do
  arch arm: "arm64", intel: "x86_64"

  version "1.20.5"
  sha256 arm:   "086227b8c7a4fbbcbe16bc7926bbaeaf43a93777afffe1193114349ab0c7fe5c",
         intel: "1ba88b767c436d4ecff1a6ecb84461028724fa4cc6eb57c031d2f4fffcf4050d"

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
end
