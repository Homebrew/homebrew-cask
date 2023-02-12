cask "securityspy" do
  version "5.5.5"
  sha256 :no_check

  url "https://www.bensoftware.com/securityspy/SecuritySpy.dmg"
  name "SecuritySpy"
  desc "Multi-camera CCTV software"
  homepage "https://www.bensoftware.com/securityspy/"

  livecheck do
    url "https://www.bensoftware.com/securityspy/versionhistory.html"
    regex(/Version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "SecuritySpy.app"
end
