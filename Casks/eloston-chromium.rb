cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "89.0.4389.114-1.1_x86-64"
    sha256 "7abf8fb4f0cc115c26f65913b0ccc426693bf75538ef6e1093c0e475a1670319"
  else
    version "89.0.4389.114-1.1_arm64"
    sha256 "0038596ec4872dd098badd0cf75ee201051a16446a5bad5073d6b8204b43adb0"
  end

  url "https://github.com/kramred/ungoogled-chromium-macos/releases/download/#{version}/ungoogled-chromium_#{version}-macos.dmg",
      verified: "github.com/kramred/ungoogled-chromium-macos/"
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
