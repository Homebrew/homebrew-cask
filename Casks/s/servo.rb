cask "servo" do
  version "2025-05-27"
  sha256 "d23e88fd636bffb511fcb5f468c5ee175d6342b2e02b1eeb79f0371ad2128be3"

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
