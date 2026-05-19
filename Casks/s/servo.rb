cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-05-18"
  sha256 arm:   "cc109cfe98ceabf3e78524fb635c95e781c7df9cfc4ccd54e3e6b4f9d3a20a13",
         intel: "630b1763a58afb8abfcd572ca2218d548a772b374580dfaa810c32548f62aaa6"

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
