cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-04-15"
  sha256 arm:   "3b4f9df79fde2bbc17bd218c0475b08ddc897a9d642ac481d5e8b74bf766f3d8",
         intel: "162b48bd987f07095d0bc45f9055cfc7e238d040a90507c3b2bd54082a35486f"

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
