cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "94.0.4606.61-1.1_x86-64"
    sha256 "57482a0fab55b632dddf2fb568c5b77e989c46b0700ee7d45cd5a75379a2478c"
  else
    version "94.0.4606.61-1.1_arm64"
    sha256 "0fb942f644372116085642811c5c81addd50caee2d5ab2a287b3b4dc86eec53e"
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
