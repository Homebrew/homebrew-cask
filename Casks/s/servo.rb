cask "servo" do
  version "2025-04-24"
  sha256 "98fdc1465485fa83f891cc264b902f675cf9da400673efdc5e4d70bccf128bbd"

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
