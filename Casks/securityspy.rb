cask "securityspy" do
  version "5.3.0"
  sha256 "e2f11c07d85b9ad5941cfb55ac7828e95d32258d90b7f0cd7fc199785ed027fe"

  url "https://www.bensoftware.com/securityspy/SecuritySpy.dmg"
  appcast "https://www.bensoftware.com/securityspy/versionhistory.html",
          must_contain: version.chomp(".0")
  name "SecuritySpy"
  homepage "https://www.bensoftware.com/securityspy/"

  depends_on macos: ">= :high_sierra"

  app "SecuritySpy.app"
end
