cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "96.0.4664.110-1.1_x86-64"
    sha256 "182eda1aa04614c4f6709734f6cb17d39851dc75ec46a57e51398e5b7a432f2a"
  else
    version "96.0.4664.110-1.1_arm64"
    sha256 "7724b7aaf7d6085a76ae793c0259b71ae3c9bf37180bf6e5dd6eab64ba119cae"
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
