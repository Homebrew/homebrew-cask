cask "servo" do
  version "2025-05-20"
  sha256 "1687fa4945b0695ff8a1f9418fccf34214e032afeb7206282c560ddfeb9331f8"

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
