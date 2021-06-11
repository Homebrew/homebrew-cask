cask "outline" do
  version "3.2105.2,2105.2.1"
  sha256 "2fa3dca058657b82353a641dadae58fab401fa7c1a0cef8517f9f0e6c56eeee8"

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
