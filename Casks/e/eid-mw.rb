cask "eid-mw" do
  version "5.0.26"
  sha256 "61312109f3e9525f95f47cf171eeec84c08472b7d898e71ee20737202c3ad592"

  url "https://eid.belgium.be/sites/default/files/software/eID-Quickinstaller-#{version}.dmg"
  name "Belgian EID Middleware"
  desc "E-ID Middleware is the middleware for the Belgian e-id system"
  homepage "https://eid.belgium.be/"

  livecheck do
    skip "No version info available"
  end

  depends_on macos: ">= :sierra"

  pkg "eID-Quickinstaller-signed.pkg"

  uninstall quit:    ["be.fedict.BEIDToken.BEIDTokenApp", "be.eid.BEIDtoken.app"],
            pkgutil: ["be.eid.middleware", "be.fedict.BEIDToken.BEIDTokenApp", "be.eid.BEIDtoken.app"]
end
