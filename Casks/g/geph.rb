cask "geph" do
  version "5.9.0"
  sha256 "3283a04fc26fa187adaf9bbdaecf3158232545266a2ed1c3c9b607f73423879f"

  url "https://dl.geph.io/geph-releases/macos-stable/#{version}/geph-macos.pkg"
  name "Geph"
  desc "Modular Internet censorship circumvention system"
  homepage "https://geph.io/en"

  livecheck do
    url :homepage
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/geph[._-]macos\.pkg}i)
  end

  depends_on :macos

  pkg "geph-macos.pkg"

  uninstall launchctl: "io.geph.manager",
            pkgutil:   "io.geph.GephGui"

  zap trash: [
    "/Library/Application Support/geph",
    "/Library/LaunchDaemons/io.geph.manager.plist",
    "~/Library/Application Support/gephgui#{version.major}",
    "~/Library/Preferences/io.geph.geph-electron.plist",
  ]

  caveats do
    requires_rosetta
  end
end
