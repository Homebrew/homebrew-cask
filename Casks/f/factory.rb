cask "factory" do
  arch arm: "arm64", intel: "x64"

  version "0.95.0"
  sha256 arm:   "9fb044850e2c38f04cf7fd086f4f7c78435c35a86e258363f50313db80b6dd6d",
         intel: "c4f6d82349b34d221d7e780909f97bfe839f7f67906f87f33271650ca2bfda82"

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
