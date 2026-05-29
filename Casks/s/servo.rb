cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-05-28"
  sha256 arm:   "a9e15e595a139a5226905eda7f96c8b54ed6943dfabe77887be87e1662019f27",
         intel: "f7fee512b2aed41e668d18db4001418bc8ba566ff3ea52fd617ea3ef86359643"

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
