cask "beid-token" do
  version "5.0.26"
  sha256 "61312109f3e9525f95f47cf171eeec84c08472b7d898e71ee20737202c3ad592"

  url "https://eid.belgium.be/sites/default/files/software/eID-Quickinstaller-#{version}.dmg"
  name "Belgian eID Middleware"
  desc "Middleware for the Belgian eID system"
  homepage "https://eid.belgium.be/"

  livecheck do
    url "https://eid.belgium.be/en/download/16/license"
    regex(/href=.*?eID(?:(?:%20|\s)+|[._-])?Quickinstaller[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  pkg "eID-Quickinstaller-signed.pkg"

  postflight do
    # Description: Ensure console variant of postinstall is non-interactive.
    # This is because `open "$APP_PATH"&` is called from the postinstall
    # script of the package and we don't want any user intervention there.
    retries ||= 3
    ohai "The BEIDToken package postinstall script launches the BEIDToken app" if retries >= 3
    ohai "Attempting to close BEIDToken.app to avoid unwanted user intervention" if retries >= 3
    return unless system_command "/usr/bin/pkill", args: ["-f", "/Applications/BEIDToken.app"]
  rescue RuntimeError
    sleep 1
    retry unless (retries -= 1).zero?
    opoo "Unable to forcibly close BEIDToken.app"
  end

  uninstall quit:    [
              "be.eid.BEIDtoken.app",
              "be.fedict.BEIDToken.BEIDTokenApp",
            ],
            pkgutil: [
              "be.eid.BEIDtoken.app",
              "be.eid.middleware",
              "be.fedict.BEIDToken.BEIDTokenApp",
            ]
  # No zap stanza required
end
