cask "factory" do
  arch arm: "arm64", intel: "x64"

  version "0.99.0"
  sha256 arm:   "57db4f868b11828202bdee46054190a1f4ddc1443f5316f7cb6670973c604fd9",
         intel: "da2357f19f08cb7e6a567c9b3419aed5d4e0f50990abac3873f991a7a6af71e7"

  url "https://downloads.factory.ai/factory-desktop/releases/#{version}/darwin/#{arch}/Factory-#{version}-#{arch}.dmg"
  name "Factory"
  desc "Native AI agent interface to build, manage, and ship software by Factory"
  homepage "https://www.factory.ai/"

  livecheck do
    url "https://downloads.factory.ai/factory-desktop/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "Factory.app"

  zap trash: [
    "~/Library/Application Support/ai.factory.desktop",
    "~/Library/Caches/ai.factory.desktop",
    "~/Library/HTTPStorages/ai.factory.desktop",
    "~/Library/Preferences/ai.factory.desktop.plist",
    "~/Library/Saved Application State/ai.factory.desktop.savedState",
    "~/Library/WebKit/ai.factory.desktop",
  ]
end
