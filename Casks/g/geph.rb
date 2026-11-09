cask "geph" do
  version "5.9.1"
  sha256 "ca13af9ce315fc25848e7be402c84cf0375a888d2a2e7639fba07315dfa6101b"

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
