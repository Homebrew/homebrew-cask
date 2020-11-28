cask "securityspy" do
  version "5.3.0"
  sha256 "de66546630615deb1bae58b54a3fc5f6bb29ec674c770c721b3245a29fad00cf"

  url "https://www.bensoftware.com/securityspy/SecuritySpy.dmg"
  appcast "https://www.bensoftware.com/securityspy/versionhistory.html",
          must_contain: version.chomp(".0")
  name "SecuritySpy"
  homepage "https://www.bensoftware.com/securityspy/"

  depends_on macos: ">= :high_sierra"

  app "SecuritySpy.app"
end
