cask "pretzel" do
  version "2.2.13"
  sha256 "eeb9b34ce983090ddab7290a106e027f6e17e69425f3d83053f759c68218920a"

  url "https://download.pretzel.rocks/Pretzel-#{version}-mac.zip"
  name "Pretzel"
  homepage "https://www.pretzel.rocks/"

  livecheck do
    url "https://download.pretzel.rocks/latest-mac.yml"
    strategy :electron_builder
  end

  app "Pretzel.app"
end
