cask "koharu" do
  version "0.85.6"
  sha256 "90232b28f1e5cb0689fc198ef36654c48c8945449370806b9d0f764d6446c50a"

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
