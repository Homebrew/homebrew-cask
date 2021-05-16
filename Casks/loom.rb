cask "loom" do
  version "0.81.0"
  sha256 "eb1942b1c7023f48f0a565f15d6efe8f038eea40296cb22698c405d6bdcd0a52"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Loom.app"
end
