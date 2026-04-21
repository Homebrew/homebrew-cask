cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-04-20"
  sha256 arm:   "bbcaaae1d21de4a164a6c9ca8df49eaabcab1f3feafac36239b164f57aa75210",
         intel: "ca77fd6fdb748c395d4d537ebfa3b5b40170eb5dbe159b9d1e6e4ca46c262644"

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
