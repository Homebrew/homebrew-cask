cask "aide-app" do
  arch arm: "arm64", intel: "x64"

  version "1.94.2.24334"
  sha256 arm:   "d5dff7f4f79e770aba90489923689b40737c5b016639b0e564df89ec27290661",
         intel: "9995f68960d57ae83a0e647ad18656bc920f87a48da691054123c4fd4a6a5493"

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
