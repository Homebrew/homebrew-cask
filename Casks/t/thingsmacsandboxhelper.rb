cask "thingsmacsandboxhelper" do
  version "3.48"
  sha256 "5a2c4bab5f050e5413e93b90b94e5a0ef736c391bdb52ae54b7e0bd514a9a15e"

  url "https://static.culturedcode.com/things/thingssandboxhelper/#{version}/ThingsHelper.zip"
  name "Things Helper"
  desc "Helper application for Things"
  homepage "https://culturedcode.com/things/help/things-sandboxing-helper-things#{version.major}/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+(?:\.\d+)+)/ThingsHelper\.zip}i)
  end

  app "ThingsMacSandboxHelper.app"

  # No zap stanza required
end
