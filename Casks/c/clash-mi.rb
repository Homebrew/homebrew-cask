cask "clash-mi" do
  version "1.0.26.1206"
  sha256 "abdcaffaa8fd2f8a6f41534e9ffec8b7a52ea3ebf69872eeed8b6333a0dcbc96"

  url "https://github.com/KaringX/clashmi/releases/download/v#{version}/clashmi_#{version}_macos_universal.dmg"
  name "Clash Mi"
  desc "Another Mihomo GUI based on Flutter"
  homepage "https://github.com/KaringX/clashmi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Clash Mi.app"

  zap trash: [
    "~/Library/Application Support/clashmi",
    "~/Library/Caches/com.nebula.clashmi",
    "~/Library/Preferences/com.nebula.clashmi.plist",
    "~/Library/Saved Application State/com.nebula.clashmi.savedState",
    "~/Library/WebKit/com.nebula.clashmi",
  ]
end
