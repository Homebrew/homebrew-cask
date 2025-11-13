cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-11-13"
  sha256 arm:   "44200289b4ef6598f9349e9d3cfbb0aaf64e0ed7017d81b153af53749a0085ca",
         intel: "81901f7c61f90f1e864c3bf2fda737f152b185230b8686ccaa70ecd701dd2f4d"

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
