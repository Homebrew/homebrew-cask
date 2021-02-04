cask "eloston-chromium" do
  version "88.0.4324.146-1.1"
  sha256 "0684016457d75c7926f858cb5e1a0f5f37c62c8a06a74024632f4715247fb6fc"

  url "https://github.com/kramred/ungoogled-chromium-macos/releases/download/#{version}/ungoogled-chromium_#{version}_macos.dmg",
      verified: "github.com/kramred/ungoogled-chromium-macos/"
  appcast "https://github.com/kramred/ungoogled-chromium-macos/releases.atom"
  name "Ungoogled Chromium"
  homepage "https://ungoogled-software.github.io/ungoogled-chromium-binaries/"

  conflicts_with cask: [
    "chromium",
    "freesmug-chromium",
  ]

  app "Chromium.app"

  zap trash: [
    "~/Library/Preferences/org.chromium.Chromium.plist",
    "~/Library/Caches/Chromium",
    "~/Library/Application Support/Chromium",
    "~/Library/Saved Application State/org.chromium.Chromium.savedState",
  ]
end
