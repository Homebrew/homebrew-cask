cask "skybox" do
  version "0.2.2"
  sha256 "3fde0768b9d199c13763ed26f4b24de3e88698316f2b727f317ccd4a1a45ef32"

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
