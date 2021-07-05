cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "91.0.4472.124-1.1_x86-64"
    sha256 "1ad779b74fe84ac28af21a6bf7b8c4b03b05dd0d5b098ac64cc23c30d7649f0b"
  else
    version "91.0.4472.124-1.1_arm64"
    sha256 "a2f494d997fc079268d4fff2d8292696035d65965f077dd33b8e8a7908a912f3"
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
