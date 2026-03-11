cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-10"
  sha256 arm:   "a046215c02f6418076dfe2a2a08e73b1f70ff512da54c6b354ba30f90e265e99",
         intel: "9d92a2f5224a796b8c1274de3fafd34db4b4b831f7d512dd83ef8c4c8dd77b9a"

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
