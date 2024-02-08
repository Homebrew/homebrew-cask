cask "servo" do
  version "0.0.1"
  sha256 :no_check

  url "https://download.servo.org/nightly/mac/servo-latest.dmg"
  name "Servo"
  desc "Parallel browser engine"
  homepage "https://servo.org/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Servo.app"
end
