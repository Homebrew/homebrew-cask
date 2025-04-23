cask "servo" do
  version "2025-04-23"
  sha256 "e1afc09f285b4ee2138ecf20935a58b21d5c2c9cccc8259b360879a01c9dc08a"

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
