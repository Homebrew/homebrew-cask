cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-04-21"
  sha256 arm:   "843bc9abe1b49a9bec7692337973358a1134ed0ed0f38c7e4b9638bbad2c2ee4",
         intel: "a60e941ebdc8d4550ad90aeeb062705e7efb06fcae3a63a4a8f808d9dd44267f"

  url "https://github.com/servo/servo-nightly-builds/releases/download/#{version}/servo-#{arch}-apple-darwin.dmg",
      verified: "github.com/servo/servo-nightly-builds/"
  name "Servo"
  desc "Parallel browser engine"
  homepage "https://servo.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)$/i)
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :ventura"

  app "Servo.app"

  zap trash: "~/Library/Application Support/Servo"
end
