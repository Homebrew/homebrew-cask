cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "92.0.4515.131-1.1_x86-64"
    sha256 "e9764f92196d437931f55590226edc1ab275347b774cca5a60fd577222762d2d"
  else
    version "92.0.4515.131-1.1_arm64"
    sha256 "7474e861fd5dcea6440d5ea075965b08bbe9f9d0f53fc61e7d45d5a9bc09abec"
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
