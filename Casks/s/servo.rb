cask "servo" do
  version "2025-04-18"
  sha256 "c11b6bc4f4119d2b9c2666a603a1dddbbc3f07def2c9b063bc42a8ba2cc71196"

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
