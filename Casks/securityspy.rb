cask "securityspy" do
  version "5.2.5"
  sha256 "f65c0ba764c49553e9a059edbd86188a8d37d518250ef85eb5de362a18aa722c"

  url "https://www.bensoftware.com/securityspy/SecuritySpy.dmg"
  appcast "https://www.bensoftware.com/securityspy/versionhistory.html",
          must_contain: version.chomp(".0")
  name "SecuritySpy"
  homepage "https://www.bensoftware.com/securityspy/"

  depends_on macos: ">= :high_sierra"

  app "SecuritySpy.app"
end
