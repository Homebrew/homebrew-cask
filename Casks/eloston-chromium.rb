cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "94.0.4606.81-1.1_x86-64"
    sha256 "864c6f74fb479af551c8bf05d886f39d6d32ca8ee4418615279006a2d293aa0b"
  else
    version "94.0.4606.81-1.1_arm64"
    sha256 "776920012220ec8733747040eb35c145cd6cefb3b73421a263a96fbbb46d5b21"
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
