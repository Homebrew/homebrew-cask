cask "thingsmacsandboxhelper" do
  version "3.46"
  sha256 "a8da1f5650f2e6d414f61903c260d964eb34e72b3aebf41f829b248b1867cd23"

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
