cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-05-08"
  sha256 arm:   "a47b959242d9c99bd87c9404dd108f4bb919284ab153bc659e36c635e802cd45",
         intel: "cb1e2c47e3c2e34f169c59064cec4db6fa533a5438484b5920ebe6c758e9f4b9"

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
