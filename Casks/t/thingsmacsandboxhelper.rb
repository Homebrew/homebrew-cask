cask "thingsmacsandboxhelper" do
  version "3.44"
  sha256 "e16c619c67b881b02ace5261d607e4b8368c717282cd80eca88eac8e0acf67db"

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
