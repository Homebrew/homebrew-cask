cask "thingsmacsandboxhelper" do
  version "3.41"
  sha256 "b342d4a08706554fcdb79e6d92093d16e235ead8528dadcef29c39851e2056b9"

  url "https://static.culturedcode.com/things/thingssandboxhelper/#{version}/ThingsHelper.zip"
  name "Things Helper"
  desc "Helper application for Things"
  homepage "https://culturedcode.com/things/help/things-sandboxing-helper-things#{version.major}/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+(?:\.\d+)+)/ThingsHelper\.zip}i)
  end

  depends_on macos: ">= :high_sierra"

  app "ThingsMacSandboxHelper.app"
end
