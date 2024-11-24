cask "aide-app" do
  arch arm: "arm64", intel: "x64"

  version "1.94.2.24328"
  sha256 arm:   "d8932b194418745bac8c8ee84dbf9d79250f6b097643c86aa0168b89e5d30c49",
         intel: "6cb91715cd5b78d013c0a9bdbee569accae398f692a299b333dd034b80d68bc6"

  url "https://github.com/codestoryai/binaries/releases/download/#{version}/Aide.#{arch}.#{version}.dmg",
      verified: "github.com/codestoryai/binaries/"
  name "Aide"
  desc "Open-source AI-native IDE"
  homepage "https://aide.dev/"

  livecheck do
    url "https://aide-updates.codestory.ai/api/update/darwin-#{arch}/stable/0"
    strategy :json do |json|
      json["productVersion"]
    end
  end

  auto_updates true
  conflicts_with formula: "aide"
  depends_on macos: ">= :catalina"

  app "Aide.app"
  binary "#{appdir}/Aide.app/Contents/Resources/app/bin/aide"

  uninstall quit: "ai.codestory.AideInsiders"

  zap trash: [
    "~/Library/Application Support/ai.codestory.sidecar",
    "~/Library/Application Support/Aide",
    "~/Library/Caches/ai.codestory.AideInsiders",
    "~/Library/Caches/ai.codestory.AideInsiders.savedState",
    "~/Library/Caches/ai.codestory.AideInsiders.ShipIt",
    "~/Library/HTTPStorages/ai.codestory.AideInsiders",
    "~/Library/Preferences/ai.codestory.AideInsiders.plist",
    "~/Library/Preferences/ByHost/ai.codestory.AideInsiders.ShipIt.*.plist",
    "~/Library/Saved Application State/ai.codestory.AideInsiders.savedState",
  ]
end
