cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-04-18"
  sha256 arm:   "a7e052ad15583939e29bdcde4cc3d0d0c913bde7c684e287eed094444bafa2c4",
         intel: "2eaf093513f3fe9d67bc62aa4f0a6441aeff7e19f7859e90d3ee73f7629588e8"

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
