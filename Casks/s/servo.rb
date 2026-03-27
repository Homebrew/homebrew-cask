cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-26"
  sha256 arm:   "b4dd80a0bdf8ba663e60919368fe568b8546545ab2fe9232c6c4e1a05b29d128",
         intel: "e064f59e8d363658a52f452d0994a67b95bf8a16cb86c4c0bc5d82299c0f8aa6"

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
