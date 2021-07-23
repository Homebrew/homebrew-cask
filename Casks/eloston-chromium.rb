cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "92.0.4515.107-1.1_x86-64"
    sha256 "699afd22616e76f9f148dad547728d40800006d3795646e1e56ee4be9c64325e"
  else
    version "92.0.4515.107-1.1_arm64"
    sha256 "3d78dba300a6b5e06a15ded820512d8cd54e7705234b92dfd450085f0d6a7c01"
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
