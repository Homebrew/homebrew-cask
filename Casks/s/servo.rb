cask "servo" do
  version "2025-04-11"
  sha256 "bb9cfe2d168329f9a7773f996a42d563991b05954a70e9e63dbedf946d69cb1a"

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
