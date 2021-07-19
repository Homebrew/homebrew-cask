cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "91.0.4472.164-1.1_x86-64"
    sha256 "dd20b8267dffac78d00c0fbb6e95ddf38af4dfeb62b07934e115ebf046986b24"
  else
    version "91.0.4472.164-1.1_arm64"
    sha256 "eedaaee0b71d16a82f44c882e3996a0ba52bf0162cc56e6d7f0fcf47ba9be0d4"
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
