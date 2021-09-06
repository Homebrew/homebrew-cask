cask "skybox" do
  version "0.2.4"
  sha256 "858c8e11977138b7a2f4892cdc34da8fbe6de006feeb5870d392987b29fbc611"

  url "https://download.skybox.xyz/skybox-mac-client/SKYBOX_for_Mac_#{version}.dmg"
  name "SKYBOX VR Video Player"
  homepage "https://skybox.xyz/"

  livecheck do
    url "https://skybox.xyz/en/download/"
    strategy :page_match
    regex(%r{href=.*?/SKYBOX_for_Mac_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "SKYBOX.app"

  zap trash: [
    "~/Library/Application Support/SKYBOX",
    "~/Library/Logs/SKYBOX",
    "~/Library/Preferences/xyz.skybox.server.mac.plist",
    "~/Library/Saved Application State/xyz.skybox.server.mac.savedState",
  ]
end
