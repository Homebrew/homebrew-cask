cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-25"
  sha256 arm:   "d6855e88c80c1ce9a0d9d3924f365eb84968edd3cbf36758f846314d5a4b621d",
         intel: "4936410825928a4d77cb5d7eb5161df823e977f51ea4b244aaa9ac6270912910"

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
