cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-02-08"
  sha256 arm:   "2600cd350cbf47a1e60edbebf7b6fcdd15ba668f334469a673986985fbb70b20",
         intel: "eea73527b23ee1f684f84443722a33480baecacf355be28a1465f7df4b70d497"

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
