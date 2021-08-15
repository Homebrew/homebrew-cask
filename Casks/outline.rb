cask "outline" do
  version "3.2106.2,2106.2.1"
  sha256 "8cbef2b27b98af5b7f2792762a929450727c34135771bf1cf4a8320b878b8b83"

  url "https://static.outline.ws/versions/Outline_#{version.before_comma}.zip"
  name "Outline"
  desc "Note taking app"
  homepage "https://outline.ws/"

  livecheck do
    url "https://gorillized.s3.amazonaws.com/versions/update_channel.xml"
    strategy :sparkle
  end

  app "Outline.app"
end
