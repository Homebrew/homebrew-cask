cask "aide-app" do
  arch arm: "arm64", intel: "x64"

  version "1.96.2.25003"
  sha256 arm:   "38945bdae222a968f18da7915cc838696517002470feac922e4f01fd45d072e2",
         intel: "1448763eea13f9ed0ff01ade0ad3880d928f79627834efaa899abf1b77487ec4"

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
