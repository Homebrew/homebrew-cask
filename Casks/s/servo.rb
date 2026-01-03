cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-03"
  sha256 arm:   "c9b7b8641bf80e15539943429f042c1bf775f8d9a16b96dbf8a165820368c381",
         intel: "d619841f12da538027b985ae4c1077be4d8f608cf89d6c9ef1f9fce8199b9489"

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
