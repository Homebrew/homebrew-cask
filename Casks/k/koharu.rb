cask "koharu" do
  version "0.47.6"
  sha256 "591cac8a8cca246f9fa89cd1a827dc317d85a1d1343b01fb73a451b9f0371359"

  url "https://github.com/mayocream/koharu/releases/download/#{version}/koharu_#{version}_aarch64.dmg",
      verified: "github.com/mayocream/koharu/"
  name "Koharu"
  desc "ML-powered manga translator"
  homepage "https://koharu.rs/"

  depends_on arch: :arm64

  app "Koharu.app"

  zap trash: [
    "~/Library/Application Support/Koharu",
    "~/Library/Caches/Koharu",
    "~/Library/WebKit/Koharu",
  ]
end
