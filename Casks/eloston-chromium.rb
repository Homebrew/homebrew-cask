cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "91.0.4472.77-1.1_x86-64"
    sha256 "6147710a275c1233ad88e6575bff7fcd4c95d1caf709048d8d154d6bf458e72d"
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
