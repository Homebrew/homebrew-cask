cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "92.0.4515.107-1.2_x86-64"
    sha256 "c8dc0ba40f3110c070883df408999d72676dc1c8f982095de71e218186e18db2"
  else
    version "92.0.4515.107-1.2_arm64"
    sha256 "b6a6db46f03f88af649af7b601aca3b1bab9fd67688678f87753bf781616b80f"
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
