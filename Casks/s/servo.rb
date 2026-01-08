cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-08"
  sha256 arm:   "b08a654c6a623d683c69936fc55164e6823ebf9be324c154b4d025fa69f68bf4",
         intel: "7f38f37d48428dfa0cb2a5b7ee4043cbe2770c899ceb00c4521403f01541f2cc"

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
