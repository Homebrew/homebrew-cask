cask "koharu" do
  version "0.78.0"
  sha256 "2a291c1c49409d9e2acbaefdcad16f15b665d55fa4c835bfb0b391819647e19a"

  url "https://github.com/mayocream/koharu/releases/download/#{version}/koharu_#{version}_aarch64.dmg",
      verified: "github.com/mayocream/koharu/"
  name "Koharu"
  desc "ML-powered manga translator"
  homepage "https://koharu.rs/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "koharu.app"

  uninstall quit: "Koharu"

  zap trash: [
    "~/Library/Application Support/Koharu",
    "~/Library/Caches/Koharu",
    "~/Library/WebKit/Koharu",
  ]
end
