cask "servo" do
  version "2025-05-15"
  sha256 "c3db2ff7e8ddcb568f15988c61cbed40516104ad7ea959ed122688e7f6e3f82d"

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
