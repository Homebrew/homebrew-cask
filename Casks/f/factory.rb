cask "factory" do
  arch arm: "arm64", intel: "x64"

  version "0.92.0"
  sha256 arm:   "3a8f7788925ca09ae74b13b3f2e8dced8bb765f41e4f9e8dd3965e20cf1bc161",
         intel: "e71a7193c1ae953106be4960a75b8ddd989da089016f3a628a40afb18d02f121"

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
