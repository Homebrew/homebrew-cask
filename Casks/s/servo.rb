cask "servo" do
  version "2025-05-19"
  sha256 "3732401f0e53e73f1902e5fb6a27e44312e6ebc21d5feb2f69ab133f343d6f73"

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
