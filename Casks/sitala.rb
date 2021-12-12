cask "sitala" do
  version "1.0"
  sha256 "d07a7c107a1d944bb2fc11392bec9c606e1c9caf357db6bd979e248f6c584831"

  url "https://decomposer.de/sitala/releases/Sitala-#{version}.dmg"
  name "Sitala"
  desc "Drum sampler plugin and standalone app"
  homepage "https://decomposer.de/sitala/"

  livecheck do
    url :homepage
    regex(/Sitala-(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Sitala.app"
  pkg "Install Plug-ins.pkg"

  uninstall pkgutil: [
    "de.decomposer.Sitala.aax",
    "de.decomposer.Sitala.au",
    "de.decomposer.Sitala.vst",
  ]

  zap trash: [
    "~/Library/Application Support/Sitala",
    "~/Library/Caches/de.decomposer.Sitala",
    "~/Library/Preferences/de.decomposer.Sitala.plist",
    "~/Library/Preferences/Sitala.settings",
    "~/Library/Preferences/SitalaStandalone.settings",
    "~/Library/Saved Application State/de.decomposer.Sitala.savedState",
  ]
end
