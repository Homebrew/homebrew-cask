cask "koharu" do
  version "0.96.0"
  sha256 "886b61fe16691a44025127c50f4ab215af2f2434492b52bc0c246a6cb22c5734"

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
