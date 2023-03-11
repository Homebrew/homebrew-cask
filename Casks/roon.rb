cask "roon" do
  version "1.0"
  sha256 :no_check

  url "https://download.roonlabs.com/builds/Roon.dmg"
  name "Roon"
  desc "Music player"
  homepage "https://roonlabs.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Roon.app"
end
