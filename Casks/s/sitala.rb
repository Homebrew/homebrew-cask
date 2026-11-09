cask "sitala" do
  version "2.1.2"
  sha256 "971e8dfc5a78a3f29be0046ea5c7d7d4582fc8cc04f54dcccc44d721f0bfdceb"

  url "https://decomposer.de/sitala/releases/Sitala-#{version}.dmg"
  name "Sitala"
  desc "Drum sampler plugin and standalone app"
  homepage "https://decomposer.de/sitala/"

  livecheck do
    url :homepage
    regex(/Sitala-(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on :macos

  pkg "Install Sitala.pkg"

  uninstall pkgutil: [
    "de.decomposer.Sitala.aax",
    "de.decomposer.Sitala.app",
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
