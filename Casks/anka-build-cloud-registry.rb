cask "anka-build-cloud-registry" do
  version "1.20.0-c83f487d"
  sha256 "5c9fdd8d3f1998a888fc9ae2fb469c6217f50e99e5af0fc669b649b17be9c905"

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
