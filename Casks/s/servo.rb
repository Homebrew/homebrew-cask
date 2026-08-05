cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-04"
  sha256 arm:   "68c5bfb3f08255e40d08b2ec0625a469a254b60e1ef265133e0f66d3b811dc96",
         intel: "6c92b528cbd0d6a1c8238fa8b5ef85d863d0a18c8d03fd38814002d7d0064d6a"

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

  depends_on macos: :ventura

  app "Servo.app"

  zap trash: "~/Library/Application Support/Servo"
end
