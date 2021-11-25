cask "outline" do
  version "3.2110.1,2205"
  sha256 "1fd2a5f1df09434666327050ce9fe4e46276b489b4b3c9f95f7a7328d8a3c6fd"

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
