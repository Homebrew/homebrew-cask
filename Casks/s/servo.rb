cask "servo" do
  version "2025-03-23"
  sha256 "0836db57bf3c7aa5285636bad71f55a4d5f52bb5b7db2b089778b677259c5dd4"

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
