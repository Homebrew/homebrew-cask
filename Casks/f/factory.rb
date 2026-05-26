cask "factory" do
  arch arm: "arm64", intel: "x64"

  version "0.90.0"
  sha256 arm:   "cb2a3eac3ff0d5b427808169371144248bf0638fb9a3b5e658bfd0ae283ba5f3",
         intel: "8d0965feab79575aa79df566499bf45044f9bf49e19365029e57814ccadf8a89"

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
