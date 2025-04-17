cask "servo" do
  version "2025-04-17"
  sha256 "19525ad439a2fcbf8267de1fee38487683bfe45bc03a4ca424b7cd52e365e5bc"

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
