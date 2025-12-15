cask "securityspy" do
  version "6.17"
  sha256 :no_check

  url "https://www.bensoftware.com/securityspy/releases/SecuritySpy.dmg"
  name "SecuritySpy"
  desc "Multi-camera CCTV software"
  homepage "https://www.bensoftware.com/securityspy/"

  livecheck do
    url "https://www.bensoftware.com/securityspy/versionhistory.html"
    regex(/Version\s+(\d+(?:\.\d+)+)/i)
  end

  app "SecuritySpy.app"

  zap trash: [
    "~/Library/Application Support/SecuritySpy",
    "~/Library/Preferences/SecuritySpy Preferences*",
    "~/Library/Saved Application State/com.bensoftware.SecuritySpy.savedState",
    "~/SecuritySpy",
  ]
end
