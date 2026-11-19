cask "koharu" do
  version "0.86.0"
  sha256 "26295082c8c504e240231edbcb704865d6d1bc1689a580332333fbbcc5553715"

  url "https://github.com/mayocream/koharu/releases/download/#{version}/koharu_#{version}_aarch64.dmg"
  name "Koharu"
  desc "ML-powered manga translator"
  homepage "https://koharu.rs/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on arch: :arm64
  depends_on :macos

  app "koharu.app"

  uninstall quit: "Koharu"

  zap trash: [
    "~/Library/Application Support/Koharu",
    "~/Library/Caches/Koharu",
    "~/Library/Logs/Koharu",
    "~/Library/WebKit/Koharu",
  ]
end
