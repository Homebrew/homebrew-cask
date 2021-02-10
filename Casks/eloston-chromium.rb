cask "eloston-chromium" do
  version "88.0.4324.150-1.1"
  sha256 "523e18e1b0f523f2bcb655808933df2411ec1ef779eb392f77e93d57725cbe4d"

  url "https://github.com/kramred/ungoogled-chromium-macos/releases/download/#{version}_x86-64/ungoogled-chromium_#{version}_x86-64-macos.dmg",
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
