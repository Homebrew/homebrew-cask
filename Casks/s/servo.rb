cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-05-16"
  sha256 arm:   "a9135de1d48cba4c54eaf4747444ffc0fe2d9a318c82369bcfaefcf3b8e42d45",
         intel: "dcc692ae683179e1f63646da56dab5a633a77346d3d9f50d8f59ef7cb1059022"

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
