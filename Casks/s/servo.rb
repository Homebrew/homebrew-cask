cask "servo" do
  version "2025-04-06"
  sha256 "a8832b2ad600d3d813abe30186cd6d746c400b3a546170d8051c233159929b33"

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
