cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-09"
  sha256 arm:   "2d65620847bc63debd658341a6b1a001a31fdb563ac22afa70233745a99ad4d6",
         intel: "6d50135279ed67cb4cec0bfd2530454a20f4216ebb3d7983a408a5ac7fbcea26"

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
