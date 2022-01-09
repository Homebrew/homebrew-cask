cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "97.0.4692.71-1.2_x86-64"
    sha256 "324d339576b17029a692d20c80dbee4e81b72b92183b1196532dc4d72d7d51a5"
  else
    version "97.0.4692.71-1.1_arm64"
    sha256 "875065219a9f3cbd88dc290b1a98c4780dc84228939fc37bfdaba675ead99b3c"
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
