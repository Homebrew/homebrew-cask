cask "securityspy" do
  version "5.3.1"
  sha256 "fe83ffc06b6eb48f8178cfbb3b5853ac959e5c8063832523e0f17a3b8200f9eb"

  url "https://www.bensoftware.com/securityspy/SecuritySpy.dmg"
  appcast "https://www.bensoftware.com/securityspy/versionhistory.html",
          must_contain: version.chomp(".0")
  name "SecuritySpy"
  homepage "https://www.bensoftware.com/securityspy/"

  depends_on macos: ">= :high_sierra"

  app "SecuritySpy.app"
end
