cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-02-05"
  sha256 arm:   "90568488bcd5bdb2dae5f22775cfb8795e0286556609a779ce5ed3e9aa0614cd",
         intel: "bcebbdd4d508eb8c89009d7aa5ab53d510f8aba886144b5bf15e6a7077d6d5dd"

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
