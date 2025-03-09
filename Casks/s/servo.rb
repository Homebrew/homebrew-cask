cask "servo" do
  version "2025-03-09"
  sha256 "4f1bfaf2018baf2205631e9958f017f92fcc3c96e4157d6e1488906c30453810"

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
