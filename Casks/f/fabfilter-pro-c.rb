cask "fabfilter-pro-c" do
  version "3.02"
  sha256 "ca3fd2ba1535c72faf9096b9a449f1584469332638944d4fff3f407197fcf77a"

  url "https://cdn-b.fabfilter.com/downloads/ffproc#{version.no_dots}.dmg"
  name "FabFilter Pro-C"
  desc "Compressor plug-in"
  homepage "https://www.fabfilter.com/products/pro-c-2-compressor-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Pro-C.*?v?(\d+(?:\.\d+)+)/im)
  end

  depends_on :macos

  pkg "FabFilter Pro-C #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-C.*"

  # No zap stanza required
end
