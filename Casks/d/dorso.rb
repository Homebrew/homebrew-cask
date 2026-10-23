cask "dorso" do
  version "1.16.1"
  sha256 "724637a4431e72a3251fdbc84b350f55bbc22123224806f47638e022f0713142"

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
