cask "outline" do
  version "3.2101.0,2101.0.1"
  sha256 "76fea63f6364f063ff7b3556aa02505d31f1409b7dc674b90d7506d841d7e7a5"

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
