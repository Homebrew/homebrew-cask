cask "outline" do
  version "3.2105.1,2105.1.1"
  sha256 "9be11e3987e512d43962a7ca9d78ddefe50de0ca87b6b20431f9065d11abca54"

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
