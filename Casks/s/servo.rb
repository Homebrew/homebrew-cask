cask "servo" do
  version "2025-03-31"
  sha256 "4412a3c69d31b346a6e7eaf0e4744b18de8f93180f7ee6b2403b2ad47de20f50"

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
