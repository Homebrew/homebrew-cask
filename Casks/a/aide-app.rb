cask "aide-app" do
  arch arm: "arm64", intel: "x64"

  version "1.96.4.25031"
  sha256 arm:   "987443a703edfa35ddacde38b454c60729dea6a64bdfdb94e7e5f2a3d2a27476",
         intel: "f1c00d17e32933c91bafaf8f795606461aec77b3ef3c976b40d4a8fe80f76a44"

  url "https://github.com/codestoryai/binaries/releases/download/#{version}/Aide.#{arch}.#{version}.dmg"
  name "Aide"
  desc "Open-source AI-native IDE"
  homepage "https://github.com/codestoryai/aide"

  # `https://github.com/codestoryai/aide` repo got archived on 2025-02-25
  # aide.dev is no longer accessible
  deprecate! date: "2025-11-30", because: :discontinued
  disable! date: "2026-11-30", because: :discontinued

  auto_updates true

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
