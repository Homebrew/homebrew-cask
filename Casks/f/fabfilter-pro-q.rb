cask "fabfilter-pro-q" do
  version "4.13"
  sha256 "14687bb8032e590ac8ba203343c1fd7910b9e0999d8c60b321d2750c11f85237"

  url "https://cdn-b.fabfilter.com/downloads/ffproq#{version.no_dots}.dmg"
  name "FabFilter Pro-Q"
  desc "Equaliser plug-in"
  homepage "https://www.fabfilter.com/products/pro-q-3-equalizer-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Pro-Q.*?v?(\d+(?:\.\d+)+)/im)
  end

  depends_on :macos

  pkg "FabFilter Pro-Q #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-Q.*"

  # No zap stanza required
end
