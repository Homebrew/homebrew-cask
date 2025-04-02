cask "servo" do
  version "2025-04-02"
  sha256 "6ea92c22652c6610de8ba7bf4f9722adc23b1d79909e09c48255b12500db55c0"

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
