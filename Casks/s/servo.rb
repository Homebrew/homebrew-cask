cask "servo" do
  version "2025-05-21"
  sha256 "28ae1122a4bda23ae97259a42aef1e763c596fabb278f1c041ec235cc4bf1f81"

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
