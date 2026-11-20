cask "koharu" do
  version "0.87.0"
  sha256 "297b9b5205d48f5637e3bd8fe0ebda68ee894fe8c264f2eee25de571eaec5397"

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
