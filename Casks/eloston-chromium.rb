cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "95.0.4638.69-1.1_x86-64"
    sha256 "d5bf9b49e835aa76fc249732d585b9e098721227406825c6d954d4c9a355544e"
  else
    version "95.0.4638.69-1.1_arm64"
    sha256 "75b412a454ad85d023a8ca999e728c4b872558c1ad7d68698dcfdab050748d2e"
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
