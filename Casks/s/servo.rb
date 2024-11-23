cask "servo" do
  version :latest
  sha256 :no_check

  url "https://download.servo.org/nightly/mac/servo-latest.dmg"
  name "Servo"
  desc "Parallel browser engine"
  homepage "https://servo.org/"

  app "Servo.app"

  caveats do
    requires_rosetta
  end
end
