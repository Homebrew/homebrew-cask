cask "anka-build-cloud-registry" do
  version "1.17.1-0966fcd"
  sha256 "5e78150027c054edbfc79c6cccd49a4fd3ecd121aa3085816da69e12b78e3930"

  url "https://downloads.veertu.com/anka/AnkaRegistry-#{version}.pkg"
  name "Anka Build Cloud Registry"
  desc "Store Anka's virtual machines in a central location"
  homepage "https://veertu.com/"

  livecheck do
    url "https://veertu.com/downloads/ankaregistry-mac-latest"
    strategy :header_match
    regex(/AnkaRegistry[._-]?v?(\d+(?:\.\d+)*[._-]\h+)\.pkg/i)
  end

  depends_on macos: ">= :yosemite"

  pkg "AnkaRegistry-#{version}.pkg"

  uninstall launchctl: [
    "com.veertu.anka.registry.plist",
    "com.veertu.anka.registry",
  ],
            pkgutil:   "com.veertu.anka.registry.pkg",
            delete:    [
              "/Library/Application Support/Veertu/Anka/bin/fvutil",
              "/Library/Application Support/Veertu/Anka/bin/ankaregctl",
              "/Library/Application Support/Veertu/Anka/bin/ankaregd",
              "/Library/Application Support/Veertu/Anka/bin/vmnetproxy",
              "/Library/Application Support/Veertu/Anka/bin/vlaunchd",
            ]

  zap trash: "/Library/Logs/Veertu/AnkaController",
      rmdir: "/Library/Application Support/Veertu/Anka/registry"

  caveats do
    license "https://veertu.com/terms-and-conditions/"
  end
end
