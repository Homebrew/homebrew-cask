cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-18"
  sha256 arm:   "ff91a171a5d7dec30d2eb9c506448df6be0691f8697fa6525195bf779d190d6d",
         intel: "7f77afa9e37a7b30ea3a8f290197cf0a265703627b8d0b611e8092547fd2138e"

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
