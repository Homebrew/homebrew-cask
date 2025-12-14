cask "obs-advanced-scene-switcher" do
  version "1.32.5"
  sha256 "99cf86a78f83a3f3e8c4c94f3eaf90ba5351d28f6b36a0885bfd5ed6c8acccbf"

  url "https://github.com/WarmUpTill/SceneSwitcher/releases/download/#{version}/advanced-scene-switcher-#{version}-macos-universal.pkg",
      verified: "github.com/WarmUpTill/SceneSwitcher/"
  name "OBS Advanced Scene Switcher"
  desc "Automated scene switcher for OBS Studio"
  homepage "https://obsproject.com/forum/resources/advanced-scene-switcher.395"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on cask: "obs"
  depends_on macos: ">= :big_sur"

  pkg "advanced-scene-switcher-#{version}-macos-universal.pkg"

  uninstall pkgutil: [
              "'com.warmuptill.advanced-scene-switcher'",
              "com.warmuptill.advanced-scene-switcher",
            ],
            delete:  "/Library/Application Support/obs-studio/plugins/advanced-scene-switcher.plugin",
            rmdir:   "/Library/Application Support/obs-studio/plugins"

  # No zap stanza required
end
