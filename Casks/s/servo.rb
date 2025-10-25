cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-10-25"
  sha256 arm:   "f425cfc6181a8be07743451194dd89d8c9848462f4978a383d952d2db06b1114",
         intel: "11b0806b999212f4a98411434be64e75e05434e3aba45b824386a81fb8c7e294"

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
