cask "eloston-chromium" do
  if Hardware::CPU.intel?
    arch = "x86-64"
    version "89.0.4389.82-1.1"
    sha256 "ae38a71f70801e3caefff2a4e545c726aafd10ad7ca8d1ed1cc7b0ddacd89f90"
  else
    arch = "arm64"
    version "89.0.4389.82-1.1"
    sha256 "867169979310eecfb547f8966889e4b2703eba7db2f17d85677d771416a3e115"
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
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
    "~/Library/Preferences/org.chromium.Chromium.plist",
    "~/Library/Saved Application State/org.chromium.Chromium.savedState",
  ]
end
