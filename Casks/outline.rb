cask "outline" do
  version "3.2103.3,2103.3.1"
  sha256 "18d209fcfe427e24bd1783d76ece90b3036a91a5dadc8c49227cf66fb50a4f9e"

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
