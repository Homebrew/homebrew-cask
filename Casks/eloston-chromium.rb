cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "94.0.4606.54-1.1_x86-64"
    sha256 "107b6f84558912ccd2012fe49aec880ae9bc0f613c4fd8190c86a26e414251a0"
  else
    version "94.0.4606.54-1.1_arm64"
    sha256 "6a3e33b01dc7f5c435621875f3fa4cb4ebf01d9059cc9fcc72bcc11b78351e22"
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
