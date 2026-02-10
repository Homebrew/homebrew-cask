cask "thingsmacsandboxhelper" do
  version "3.47"
  sha256 "d1e75ef442caf4701b1a870db335795f68a280ec49141aaf8f2d2463124de476"

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
