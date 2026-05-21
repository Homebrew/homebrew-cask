cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-05-20"
  sha256 arm:   "9e671a44a1c6f3a7e6140b4cdecaeea92a94ff132702cc8be2a71439f1139f7a",
         intel: "6c8e66df89e3076ed02e006d9b8d9480ae2291a7222c01ae7c092a410d02ed5f"

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
