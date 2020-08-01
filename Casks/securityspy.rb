cask "securityspy" do
  version "5.2.4"
  sha256 "03ca6f70c1cd798ae65ac7f562fcec75768d25e883074700d255829356722186"

  url "https://www.bensoftware.com/securityspy/SecuritySpy.dmg"
  appcast "https://www.bensoftware.com/securityspy/versionhistory.html",
          must_contain: version.chomp(".0")
  name "SecuritySpy"
  homepage "https://www.bensoftware.com/securityspy/"

  depends_on macos: ">= :high_sierra"

  app "SecuritySpy.app"
end
