cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "93.0.4577.63-1.1_x86-64"
    sha256 "e1debe0a577f66bd3eef3a71e136c36ada2388de08358e5433e4abaf8e24afbb"
  else
    version "93.0.4577.63-1.1_arm64"
    sha256 "c66a40eae28e885f45a09e0705d88e285d6cc62f3c43a1ce7182541191923a63"
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
