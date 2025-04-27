cask "servo" do
  version "2025-04-27"
  sha256 "0bda55898c47ab2bf48b93aa315dffc0803eaeb16622386b4c575cde385d5398"

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
