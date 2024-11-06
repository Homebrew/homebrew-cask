cask "aide-app" do
  arch arm: "arm64", intel: "x64"

  version "1.94.2.24317"
  sha256 arm:   "02b4ed328bab1687aa61a683eaa225884b60d8472472bf600c1075379d2296fd",
         intel: "c571ac80295702ff3e6a91a9acc73e22e9281084618b2df7913a8f7cf69aebc2"

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
