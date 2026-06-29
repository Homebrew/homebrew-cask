cask "clash-mi" do
  version "1.0.26.1201"
  sha256 "e024ad8d6d9fa437f9c92cb365b9cc0e8ffb02d37460dd820eb9d43d6caf30d9"

  url "https://github.com/KaringX/clashmi/releases/download/#{version}/clashmi_#{version}_macos_universal.dmg"
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
