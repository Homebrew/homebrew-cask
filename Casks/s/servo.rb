cask "servo" do
  version "2025-03-18"
  sha256 "94883104c4a9daf6f8f2a1338935fba993fc28b68a71bd34ad93f4bdac1ece6d"

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
