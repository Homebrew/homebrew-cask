cask "outline" do
  version "3.2011.0"
  sha256 "16403eea82e76d3c024baa0484f5b9f23b1674e4eec776ec3d85eb0c22705b7a"

  url "https://static.outline.ws/versions/Outline_#{version}.zip"
  appcast "https://gorillized.s3.amazonaws.com/versions/update_channel.xml"
  name "Outline"
  desc "Note taking app"
  homepage "https://outline.ws/"

  app "Outline.app"
end
