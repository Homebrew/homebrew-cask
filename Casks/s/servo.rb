cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-31"
  sha256 arm:   "61575098284b4b19f316b5480c8e9e9d8ea8d789bebc509380b5eed70dbecada",
         intel: "472d719ff4cddbe659a9bbec72ff95031217f6b803cad1975e77689d63e0d2f6"

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
