cask "aide-app" do
  arch arm: "arm64", intel: "x64"

  version "1.94.2.24355"
  sha256 arm:   "f201546f3f7e43595ff3f0e257c943e5ea67cbc9b6b5c4867fb6b8ccbbfa7a42",
         intel: "61353c79e6e4d1b02d47af6c103f4877c6fd00d3a68d3bf873b1645ff3b2264c"

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
