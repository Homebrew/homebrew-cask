cask "servo" do
  version "2025-04-19"
  sha256 "f14e1ee1f494462430bf296d88be7ef39e33cff2b629abc83ed5ea137a25f925"

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
