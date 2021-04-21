cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "90.0.4430.72-1.2_x86-64"
    sha256 "d6cd8d167ad87fd2c697dcb6b0add9776e1371e3dffc5393060134168db090bb"
  else
    version "90.0.4430.72-1.1_arm64"
    sha256 "a2d1792d7d0573e823e358c8534b7b51b923e063d51bc8277e97ce7c28977f26"
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
