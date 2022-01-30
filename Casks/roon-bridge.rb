cask "roon-bridge" do
  version "1.0"
  sha256 :no_check

  url "https://download.roonlabs.com/builds/RoonBridge.dmg"
  name "Roon Bridge"
  desc "Music player network extender"
  homepage "https://roonlabs.com/"

  app "RoonBridge.app"
end
