cask "thingsmacsandboxhelper" do
  version "3.38"
  sha256 "d640333cdb7b647499385726972ae2552c179d2187fe9fb47e02008e73edc1a0"

  url "https://static.culturedcode.com/things/thingssandboxhelper/#{version}/ThingsHelper.zip"
  name "Things Helper"
  desc "Helper application for Things"
  homepage "https://culturedcode.com/things/mac/help/things-sandboxing-helper-things#{version.major}/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+(?:\.\d+)+)/ThingsHelper\.zip}i)
  end

  app "ThingsMacSandboxHelper.app"
end
