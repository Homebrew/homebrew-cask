cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-07"
  sha256 arm:   "e6c7764e76caebb53650cfa485ffabdbaa715ffd03df0bfeda85699d749a42d3",
         intel: "1fb69c8e211a97b6248a04ee6242f9026215944f96e38f59177e1e7a8a3ab9ae"

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
