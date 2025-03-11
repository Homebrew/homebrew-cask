cask "servo" do
  version "2025-03-11"
  sha256 "4aa5ca353498ce308c3b082856df3eee74d21ccb603b79f994be26a04be0fd79"

  url "https://github.com/servo/servo-nightly-builds/releases/download/#{version}/servo-latest.dmg",
      verified: "github.com/servo/servo-nightly-builds/"
  name "Servo"
  desc "Parallel browser engine"
  homepage "https://servo.org/"

  depends_on macos: ">= :ventura"

  app "Servo.app"

  caveats do
    requires_rosetta
  end
end
