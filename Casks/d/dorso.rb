cask "dorso" do
  version "1.17.0"
  sha256 "7463f92ea0413c4e87111ceda7584308eede6716aace987782a392d577f0a5a4"

  url "https://github.com/tldev/dorso/releases/download/v#{version}/Dorso-v#{version}.dmg"
  name "Dorso"
  desc "Posture monitoring app"
  homepage "https://github.com/tldev/dorso"

  auto_updates true
  depends_on macos: :ventura

  app "Dorso.app"

  zap trash: [
    "~/Library/Application Support/Dorso",
    "~/Library/Preferences/com.thelazydeveloper.posturr.plist",
  ]
end
