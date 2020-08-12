cask "securityspy" do
  version "5.2.4"
  sha256 "25bb6f7e74a5876e42c94b3015c9040d96df9f3ea70b22853851f0d676ff88d4"

  url "http://www.bensoftware.com/securityspy/SecuritySpy.dmg"
  appcast "https://www.bensoftware.com/securityspy/versionhistory.html",
          must_contain: version.chomp(".0")
  name "SecuritySpy"
  homepage "https://www.bensoftware.com/securityspy/"

  depends_on macos: ">= :high_sierra"

  app "SecuritySpy.app"
end
