cask "servo" do
  version "2025-05-23"
  sha256 "9ccafe25dec20c07cdb5cd44ee6f5ef0f6d309b36babe924c4dbd75698236084"

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
