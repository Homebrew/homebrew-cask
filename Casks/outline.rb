cask "outline" do
  version "3.2011.1"
  sha256 "051bf998a2c99cdc72ac9de3d525a8c779995977a74fc14ec9ce129830d59b5e"

  url "https://static.outline.ws/versions/Outline_#{version}.zip"
  appcast "https://gorillized.s3.amazonaws.com/versions/update_channel.xml"
  name "Outline"
  desc "Note taking app"
  homepage "https://outline.ws/"

  app "Outline.app"
end
