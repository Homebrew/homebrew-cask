cask "anka-build-cloud-registry" do
  version "1.16.0-25e4cad"
  sha256 "b63135dd67e89b49346d38b1555a3ce28aaeef67e9026f2abddc48a9683a690b"

  url "https://d1efqjhnhbvc57.cloudfront.net/AnkaRegistry-#{version}.pkg",
      verified: "d1efqjhnhbvc57.cloudfront.net/"
  appcast "https://ankadocs.veertu.com/docs/release-notes/"
  name "Anka Build Cloud Registry"
  desc "Store Anka's virtual machines in a central location"
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
