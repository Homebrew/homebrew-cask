cask "servo" do
  version "2025-06-03"
  sha256 "f3a26906af748657dd638de4ee6fa6f5a6df7759620d09b3ee6a8e489647ea2e"

  url "https://github.com/servo/servo-nightly-builds/releases/download/#{version}/servo-latest.dmg",
      verified: "github.com/servo/servo-nightly-builds/"
  name "Servo"
  desc "Parallel browser engine"
  homepage "https://servo.org/"

  depends_on macos: ">= :ventura"

  app "Servo.app"

  zap trash: "~/Library/Application Support/Servo"

  caveats do
    requires_rosetta
  end
end
