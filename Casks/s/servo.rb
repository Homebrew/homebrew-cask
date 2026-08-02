cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-01"
  sha256 arm:   "ec296107b875ab1838b5a2e787f158a555fbb8c2aaffa4226e5650f964b0ac02",
         intel: "a3d879619115aa0c316d557363694d30de0adee02f7897efa3594edb0c9d6e78"

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
