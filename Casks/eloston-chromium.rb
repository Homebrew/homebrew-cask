cask "eloston-chromium" do
  version "88.0.4324.182-1.1"
  sha256 "50ce72d0a7a1782de3f2b8f8d27535d60ce4d585e29bd4ce329eebc34e7ea497"

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
