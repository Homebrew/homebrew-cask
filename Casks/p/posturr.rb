cask "posturr" do
  version "1.8.2"
  sha256 "3db0838db3982918405eaaa86ed346eae2bc4209b04897a7914c883338dc07be"

  url "https://github.com/tldev/posturr/releases/download/v#{version}/Posturr-v#{version}.dmg"
  name "Posturr"
  desc "Posture monitoring app"
  homepage "https://github.com/tldev/posturr"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Posturr.app"

  zap trash: "~/Library/Preferences/com.thelazydeveloper.posturr.plist"
end
