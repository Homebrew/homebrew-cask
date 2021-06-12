cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "91.0.4472.101-1.1_x86-64"
    sha256 "e25ce57c323f3f73abb1568e417132ebc448a98ff135ddb1741f99bf39832d23"
  else
    version "91.0.4472.101-1.1_arm64"
    sha256 "1d10477d4a90bf42461453fd4e9893d3bf1c7726aad008bdd62d343546db6b35"
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
