cask "servo" do
  version "2025-05-25"
  sha256 "fb7d839bbb76f1f0c79ee45e595434cc0951c3629c8d448073dd5bec2a44f4a5"

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
