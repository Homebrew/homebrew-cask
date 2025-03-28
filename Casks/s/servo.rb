cask "servo" do
  version "2025-03-28"
  sha256 "7a10a69b27540b5d26cdb1e1ca7d9c34bc413237a8e6ad2ee240303bba0a57ae"

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
