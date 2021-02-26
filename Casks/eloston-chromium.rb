cask "eloston-chromium" do
  version "88.0.4324.192-1.1"
  sha256 "4cacb5ae40c37ef17cf01f4e063772ff7e83d829ae6132d8e6f2c98178bf10e9"

  if Hardware::CPU.intel?
    arch = "x86-64"
  else
    arch = "arm64"
    version "88.0.4324.192-1.1"
    sha256 "0fc60da4c8f67b87f0582cf4fe796f7ece55dad3a612ad0352a39c4deba5d365"
  end

  url "https://github.com/kramred/ungoogled-chromium-macos/releases/download/#{version}_#{arch}/ungoogled-chromium_#{version}_#{arch}-macos.dmg",
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
