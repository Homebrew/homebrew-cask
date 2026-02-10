cask "posturr" do
  version "1.8.1"
  sha256 "859fba9fa9863c3fb15c88bfa13f69f7c5278a6329ccfde9cd86ad1791fc4091"

  url "https://github.com/tldev/posturr/releases/download/v#{version}/Posturr-v#{version}.dmg"
  name "Posturr"
  desc "Posture monitoring app"
  homepage "https://github.com/tldev/posturr"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Posturr.app"

  zap trash: "~/Library/Preferences/com.thelazydeveloper.posturr.plist"
end
