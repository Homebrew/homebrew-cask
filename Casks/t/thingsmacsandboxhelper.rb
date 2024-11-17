cask "thingsmacsandboxhelper" do
  version "3.42"
  sha256 "cab6e0761cf465e14117d57140d02dc4eb2cc2c1b30126e300794dfe40e4ed33"

  url "https://static.culturedcode.com/things/thingssandboxhelper/#{version}/ThingsHelper.zip"
  name "Things Helper"
  desc "Helper application for Things"
  homepage "https://culturedcode.com/things/help/things-sandboxing-helper-things#{version.major}/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+(?:\.\d+)+)/ThingsHelper\.zip}i)
  end

  depends_on macos: ">= :catalina"

  app "ThingsMacSandboxHelper.app"

  # No zap stanza required
end
