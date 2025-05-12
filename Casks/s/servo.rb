cask "servo" do
  version "2025-05-12"
  sha256 "0860993f56ba92ec7955ef93549fda324ba709b90e7cdf082320d29ce19b8d1e"

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
