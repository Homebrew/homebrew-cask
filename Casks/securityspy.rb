cask "securityspy" do
  version "5.2.5"
  sha256 "d5bc77b857ac783369f2742cbb25b47a44ebc92e33aafb8c70b96facf162461a"

  url "https://www.bensoftware.com/securityspy/SecuritySpy.dmg"
  appcast "https://www.bensoftware.com/securityspy/versionhistory.html",
          must_contain: version.chomp(".0")
  name "SecuritySpy"
  homepage "https://www.bensoftware.com/securityspy/"

  depends_on macos: ">= :high_sierra"

  app "SecuritySpy.app"
end
