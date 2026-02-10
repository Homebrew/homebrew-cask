cask "clash-mi" do
  version "1.0.17.300"
  sha256 "be8ad5d07f1ced20b8da06edb365dc7b8090eb2c2affc3bfd38d0ef993ed4af7"

  url "https://github.com/KaringX/clashmi/releases/download/v#{version}/clashmi_#{version}_macos_universal.dmg"
  name "Clash Mi"
  desc "Another Mihomo GUI based on Flutter"
  homepage "https://github.com/KaringX/clashmi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Clash Mi.app"

  zap trash: [
    "~/Library/Application Support/clashmi",
    "~/Library/Caches/com.nebula.clashmi",
    "~/Library/Preferences/com.nebula.clashmi.plist",
    "~/Library/Saved Application State/com.nebula.clashmi.savedState",
    "~/Library/WebKit/com.nebula.clashmi",
  ]
end
