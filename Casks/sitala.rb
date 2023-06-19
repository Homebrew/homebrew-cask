cask "sitala" do
  version "2.0.0"
  sha256 "e7cdd367f313d88c15d34773b725b8a71984caab05496c2ce2efe4def70f25be"

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
