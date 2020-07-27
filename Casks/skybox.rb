cask "skybox" do
  version "0.2.2"
  sha256 "3fde0768b9d199c13763ed26f4b24de3e88698316f2b727f317ccd4a1a45ef32"

  url "http://download.skybox.xyz/skybox-mac-client/SKYBOX_for_Mac_#{version}.dmg"
  appcast "https://skybox.xyz/en/download/"
  name "SKYBOX VR Video Player"
  homepage "https://skybox.xyz/"

  app "SKYBOX.app"
end
