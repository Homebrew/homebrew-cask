cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-10"
  sha256 arm:   "03a382ed4149e2e2f86bbe5c3a04828e23462907573572751c0a0acf2ae48ac3",
         intel: "e1f66a3a396e0ac3f0b93f7c510c0e315b143ff7143553cc4a8ecb12a7cc15f5"

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
