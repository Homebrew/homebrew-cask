cask "servo" do
  version "2025-05-01"
  sha256 "3fb1fae43a199a1d98d28ae53cd232bf327e11b7437f560d96f413710cd28753"

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
