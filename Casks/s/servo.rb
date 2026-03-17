cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-16"
  sha256 arm:   "228e9a48aee334cddcc6725f52eeb6dd65aa91dcda71035f1c503b8ac354dcbc",
         intel: "47c68ef608bec9e97d82e344c4e22d5a5d7437fd0c854687eb265f16777ee833"

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
