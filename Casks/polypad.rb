cask "polypad" do
  version "1.3.0"
  sha256 :no_check 

  url "https://get.polypad.io/download/mac"
  name "Polypad"
  desc "Scriptable Textpad for Developers"
  homepage "https://polypad.io/"

  livecheck do
    url "https://polypad-releases.s3.us-west-1.amazonaws.com/mac/latest-mac.yml"
    strategy :electron_builder
  end

  app "Polypad.app"
end

