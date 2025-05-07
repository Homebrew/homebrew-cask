cask "servo" do
  version "2025-05-07"
  sha256 "703fa3998cc387468e9d04b2c93d44ad7f818edc514a37d04ccabd29bd73a119"

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
