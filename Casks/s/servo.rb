cask "servo" do
  version "2025-05-18"
  sha256 "3f9d094b1c4377f3c488fb3abb8494050e19174872dd69aa724907a6ef219cb7"

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
