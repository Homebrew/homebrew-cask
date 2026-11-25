cask "koharu" do
  version "0.97.0"
  sha256 "dc477130fe7cd5c8c5a31ae085d6cf86838fa5704549f1900c0f47496117bdad"

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
