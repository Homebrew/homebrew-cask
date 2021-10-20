cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "95.0.4638.54-1.1_x86-64"
    sha256 "4762736aff906ba577af95e18a76e10378f48da6b47783aceed6c7c1d8bf5ee1"
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
