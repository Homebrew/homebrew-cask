cask "fabfilter-pro-r" do
  version "2.06"
  sha256 "4c8599dddc855068506fe2982a6f934079a3c9d356f69906a23d792d291322d2"

  url "https://cdn-b.fabfilter.com/downloads/ffpror#{version.no_dots}.dmg"
  name "FabFilter Pro-R"
  desc "Reverb plug-in"
  homepage "https://www.fabfilter.com/products/pro-r-2-reverb-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Pro-R.*?v?(\d+(?:\.\d+)+)/im)
  end

  depends_on :macos

  pkg "FabFilter Pro-R #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-R.*"

  # No zap stanza required
end
