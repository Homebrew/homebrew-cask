cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-05-13"
  sha256 arm:   "f65024ef79494f7b134f932ec753cd24f3debe32cf92956bffdfb2f2de97818c",
         intel: "95bec58cd6af4eb3113c6784effd9b6972f40702f71523ddfc36a6bc159bc315"

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
