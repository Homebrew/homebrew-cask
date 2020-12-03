cask "anka-build-cloud-registry" do
  version "1.12.0-1f2c3e1"
  sha256 "4107c0f923ed14fce9384840cc58031bb3f06e64aedd58723095ee38867be35e"

  url "https://d1efqjhnhbvc57.cloudfront.net/AnkaRegistry-#{version}.pkg",
      verified: "d1efqjhnhbvc57.cloudfront.net"
  appcast "https://ankadocs.veertu.com/docs/release-notes/"
  name "Anka Build Cloud Registry"
  desc "Store Anka's macOS virtual machines in a central location"
  homepage "https://veertu.com/"

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
