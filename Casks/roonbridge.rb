cask "roonbridge" do
  version "1.0"
  sha256 :no_check

  url "https://download.roonlabs.com/builds/RoonBridge.dmg"
  name "Roon Bridge"
  desc "Music player network extender"
  homepage "https://roonlabs.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "RoonBridge.app"

  zap trash: "~/Library/RoonBridge"
end
