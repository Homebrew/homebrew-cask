cask "servo" do
  version "2025-04-07"
  sha256 "0ecaa0fc8f1fbef73bff105bb1ddad7476f2a32dc4199e086b52bb1759dd86d3"

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
