cask "servo" do
  version "2025-05-26"
  sha256 "d5eca9b5aafcd7910ef8c425bbe6218a689a513dd3822ad12892edecddfff867"

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
