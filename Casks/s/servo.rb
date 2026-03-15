cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-14"
  sha256 arm:   "f2d595b2fe77226c4d4691109ab71d88afb47a40cc5e3fe01e436008496224dd",
         intel: "110ae90ac3dd997facde841ac7738d010bc5622172bfac5a17e20acc011a7629"

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
