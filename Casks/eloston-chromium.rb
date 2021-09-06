cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "92.0.4515.159-1.1_x86-64"
    sha256 "1ef1120e242a9ebd874ee06cd42c40c9d4160edbbd9f4d04c154b38849be4e31"
  else
    version "92.0.4515.159-1.1_arm64"
    sha256 "2d19d4d4a01991e5ed7547d44530a8cfc4672a171dacd4c55513955c93d9c63f"
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
