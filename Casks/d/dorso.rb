cask "dorso" do
  version "1.12.0"
  sha256 "e6e4bf5886490755be0fd8cd135b46f6703461714c311ccec97cdae99f946215"

  url "https://github.com/tldev/dorso/releases/download/v#{version}/Dorso-v#{version}.dmg"
  name "Dorso"
  desc "Posture monitoring app"
  homepage "https://github.com/tldev/dorso"

  auto_updates true
  depends_on macos: :ventura

  app "Dorso.app"

  zap trash: "~/Library/Preferences/com.thelazydeveloper.posturr.plist"
end
