cask "sitala" do
  version "2.0.1"
  sha256 "5c1c95ec63440bc59d013b8bf9000f41b4b7c010a9cd728bb9ee7fbd3ccd772a"

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
    "de.decomposer.Sitala.vst3",
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
