cask "obs-advanced-scene-switcher" do
  version "1.36.1"
  sha256 "861897f67c39ef32571a96e0e3c6545e0f076820512b6994665180a7a6d51b52"

  url "https://github.com/WarmUpTill/SceneSwitcher/releases/download/#{version}/advanced-scene-switcher-#{version}-macos-universal.pkg"
  name "OBS Advanced Scene Switcher"
  desc "Automated scene switcher for OBS Studio"
  homepage "https://obsproject.com/forum/resources/advanced-scene-switcher.395"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on cask: "obs"
  depends_on macos: :big_sur

  pkg "advanced-scene-switcher-#{version}-macos-universal.pkg"

  uninstall pkgutil: [
              "'com.warmuptill.advanced-scene-switcher'",
              "com.warmuptill.advanced-scene-switcher",
            ],
            delete:  "/Library/Application Support/obs-studio/plugins/advanced-scene-switcher.plugin",
            rmdir:   "/Library/Application Support/obs-studio/plugins"

  # No zap stanza required
end
