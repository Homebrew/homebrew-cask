cask "dorso" do
  version "1.15.1"
  sha256 "1daabab81b3b0233a5664ec1133f5d0c6706699f66e9dc6a9547d0575c849d6a"

  url "https://github.com/tldev/dorso/releases/download/v#{version}/Dorso-v#{version}.dmg"
  name "Dorso"
  desc "Posture monitoring app"
  homepage "https://github.com/tldev/dorso"

  auto_updates true
  depends_on macos: :ventura

  app "Dorso.app"

  zap trash: "~/Library/Preferences/com.thelazydeveloper.posturr.plist"
end
