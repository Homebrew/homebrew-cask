cask "outline" do
  version "3.2103.2,2103.2.1"
  sha256 "81b85ab7f868a2644bf65f24dbea9a5d5fb0980add17602c0179f65ae4b24e9f"

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
