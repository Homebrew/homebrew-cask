cask "servo" do
  version "2025-05-08"
  sha256 "650465848167f2e3c486fd6b6fcf28615fd8659aeb955fffaabb790d1e76de6e"

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
