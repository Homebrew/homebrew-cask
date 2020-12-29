cask "skybox" do
  version "0.2.2"
  sha256 "3fde0768b9d199c13763ed26f4b24de3e88698316f2b727f317ccd4a1a45ef32"

  url "https://download.skybox.xyz/skybox-mac-client/SKYBOX_for_Mac_#{version}.dmg"
  appcast "https://skybox.xyz/en/download/"
  name "SKYBOX VR Video Player"
  homepage "https://skybox.xyz/"

  app "SKYBOX.app"

  zap trash: [
    "~/Library/Application Support/SKYBOX",
    "~/Library/Logs/SKYBOX",
    "~/Library/Preferences/xyz.skybox.server.mac.plist",
    "~/Library/Saved Application State/xyz.skybox.server.mac.savedState",
  ]
end
