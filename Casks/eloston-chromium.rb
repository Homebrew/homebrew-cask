cask "eloston-chromium" do
  version "87.0.4280.88-1.1"
  sha256 "cc2c2da6bea68bd518fdeb6d7562ee4fb5cc9c1af6b533790cecd816f59cee22"

  # github.com/kramred/ungoogled-chromium-macos/ was verified as official when first introduced to the cask
  url "https://github.com/kramred/ungoogled-chromium-macos/releases/download/#{version}/ungoogled-chromium_#{version}_macos.dmg"
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
