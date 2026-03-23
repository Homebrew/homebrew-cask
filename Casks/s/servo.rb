cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-22"
  sha256 arm:   "fffb73250d65eb06561fbfbeb9a059d765b0d098e6a0e8fb454a27a59778206e",
         intel: "45a0de8d17b6aa2ffe203173b1fbe98053b0d58d4543233ab3e738997c4076f7"

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
