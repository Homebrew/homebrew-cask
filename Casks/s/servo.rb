cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-02-02"
  sha256 arm:   "d12b86bb7bd283307bd251fa0f6412c6b85715061112d3cc090716f590b85e24",
         intel: "035c04764fea5aac7eb92971d3f891da0d8ab1d2bd554ff322bbe94b50b0bba1"

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
