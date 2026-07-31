cask "distroav" do
  version "6.1.1"
  sha256 "119e88377a3920216ac2f9e29b174d45c43f855baed14c7b282e35378c0e06d3"

  url "https://github.com/DistroAV/DistroAV/releases/download/#{version}/distroav-#{version}-macos-universal.pkg",
      verified: "github.com/DistroAV/DistroAV/"
  name "DistroAV"
  desc "NDI integration for OBS Studio"
  homepage "https://distroav.org/"

  # Reference: https://github.com/Homebrew/homebrew-cask/pull/235792
  disable! date: "2026-11-14", because: "the package is not compatible with Homebrew's installation parameters"

  depends_on :macos
  depends_on cask: "libndi"

  pkg "distroav-#{version}-macos-universal.pkg"

  # The pkg installs the plugin files to /Library/Application Support/obs-studio/plugins
  # however OBS Studio expects them to be in ~/Library/Application Support/obs-studio/plugins
  # so we create symlinks to correctly link the plugin files for OBS Studio.
  postflight_steps do
    symlink "/Library/Application Support/obs-studio/plugins/distroav.plugin",
            "~/Library/Application Support/obs-studio/plugins/distroav.plugin", remove_on_uninstall: true
    symlink "/Library/Application Support/obs-studio/plugins/distroav.plugin.dSYM",
            "~/Library/Application Support/obs-studio/plugins/distroav.plugin.dSYM", remove_on_uninstall: true
  end

  uninstall pkgutil: [
    "'org.distroav.distroav'",
    "org.distroav.distroav",
  ]

  # No zap stanza required
end
