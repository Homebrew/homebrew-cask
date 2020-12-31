cask "outline" do
  version "3.2011.1,2011.1.1"
  sha256 "051bf998a2c99cdc72ac9de3d525a8c779995977a74fc14ec9ce129830d59b5e"

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
