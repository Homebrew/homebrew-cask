cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "90.0.4430.212-1.1_x86-64"
    sha256 "fb1c992747f1667283f0820d92315a195d7a91c4135226e7cd424e93de2675c4"
  else
    version "90.0.4430.93-1.1_arm64"
    sha256 "efecba9e8c1ffdfb457448cc3b139c9c5d86135b4a73af373a0a4f6bb27fa17b"
  end

  url "https://github.com/kramred/ungoogled-chromium-macos/releases/download/#{version}/ungoogled-chromium_#{version}-macos.dmg",
      verified: "github.com/kramred/ungoogled-chromium-macos/"
  name "Ungoogled Chromium"
  desc "Google Chromium, sans integration with Google"
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
