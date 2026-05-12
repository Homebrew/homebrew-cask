cask "koharu" do
  version "0.59.0"
  sha256 "2fdfb65e64923416c442318aaf090cc5ee3810bcafb811d10d2cc5d45fa309f8"

  url "https://github.com/mayocream/koharu/releases/download/#{version}/koharu_#{version}_aarch64.dmg",
      verified: "github.com/mayocream/koharu/"
  name "Koharu"
  desc "ML-powered manga translator"
  homepage "https://koharu.rs/"

  depends_on :macos
  depends_on arch: :arm64

  app "Koharu.app"

  zap trash: [
    "~/Library/Application Support/Koharu",
    "~/Library/Caches/Koharu",
    "~/Library/WebKit/Koharu",
  ]
end
