cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "93.0.4577.82-1.1_x86-64"
    sha256 "efac4b2092459a723b8346000500b858319b87dbd22fc3c9e29ad1fe2060efdb"
  else
    version "93.0.4577.82-1.1_arm64"
    sha256 "61588fdac15d02b17ae33ee0ba33122e908d21cb378f65678a665047b2d484fa"
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
