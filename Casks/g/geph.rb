cask "geph" do
  version "5.8.3"
  sha256 "d2ad08a476a617e6988cd21f84d9f7e1b6c56eaa84f8cc1b182894822de43acd"

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
    "~/Library/Application Support/gephgui#{version.major}",
    "~/Library/Preferences/io.geph.geph-electron.plist",
  ]

  caveats do
    requires_rosetta
  end
end
