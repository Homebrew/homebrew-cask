cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "96.0.4664.45-1.1_x86-64"
    sha256 "42b48f75081e74e727e43baa35f1306210c86c0794a01af190aee659992c386f"
  else
    version "96.0.4664.45-1.1_arm64"
    sha256 "3fa8c683f4c9731d3b224c11bdd07ee16c257227a8f26408d48572b2e0cd961a"
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
