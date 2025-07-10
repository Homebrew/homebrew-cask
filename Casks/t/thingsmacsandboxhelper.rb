cask "thingsmacsandboxhelper" do
  version "3.43"
  sha256 "62174ecc0b71b8a209a4e498765cd7238a73c024a58d5b5d080694e56a6eaa51"

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
