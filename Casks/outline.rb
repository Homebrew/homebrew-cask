cask "outline" do
  version "3.2106.3,2106.3.1"
  sha256 "ec915774bd6a0d57bba3f6799c77078d4f9e0f1405c8d6a457aade93f8d71a7e"

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
