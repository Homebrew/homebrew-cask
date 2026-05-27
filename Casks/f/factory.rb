cask "factory" do
  arch arm: "arm64", intel: "x64"

  version "0.91.0"
  sha256 arm:   "2c19f0eacc77e42857ce4c0a64c9e4c0fc79a1f39472f25bde1fa6efdfdc56f2",
         intel: "fb65b7e5a81aaf144051a5b5658e09c0578482f5d7b02a2dd3dd81c9a607f127"

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
