cask "servo" do
  version "2025-04-16"
  sha256 "23a5996d7e7d0f3f6d84fdb9ff46fcd013b6caf57302481b3a296beb5f5b0835"

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
