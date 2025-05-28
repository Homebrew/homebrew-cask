cask "servo" do
  version "2025-05-28"
  sha256 "ce749e043af91fd350afc13b451201d7f8bdd9cf1ebb72e95dc0b62a8860c9cc"

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
