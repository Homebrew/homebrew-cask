cask "eloston-chromium" do
  version "84.0.4147.125-1.1"
  sha256 "7d805b3d1bd796520a0df129622b098fc0fd4959fa60448121eb353a987dfdee"

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
