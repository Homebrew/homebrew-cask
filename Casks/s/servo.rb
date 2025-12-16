cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-16"
  sha256 arm:   "96e2c14d07a4a44478fdebb57df9a0718f391d676fd79ca5295a179894b6f630",
         intel: "f9ba87ba1f4ee750a8157998697933ea4f5ead73a225bb556f414fb23d561c3c"

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
