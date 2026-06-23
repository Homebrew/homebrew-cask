cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-22"
  sha256 arm:   "9fa4e6f30b3ee532333d7de7a35232b97b848194fa19aac643e288a9524f487f",
         intel: "3401a17ef9c6cffa75c04d621a254bb738e89eb83f6391bdd0d1e940047ab657"

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
