cask "outline" do
  version "3.2106.1,2106.1.9"
  sha256 "335e2219d0e225689edaa2c163f76451413bdb02423dfc92e3fb41e622208773"

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
