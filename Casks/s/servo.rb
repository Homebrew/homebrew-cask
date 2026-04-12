cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-04-11"
  sha256 arm:   "588df9385fba97204a1210c3b530fa6c1c0a67dab8d3f7c0f07dce7a727117ea",
         intel: "ad706f8503b5de35498f8fbc43be2e92da00ded31c590588f0f8a66b5b7bdbc9"

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
