cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "91.0.4472.164-1.1_x86-64"
    sha256 "dd20b8267dffac78d00c0fbb6e95ddf38af4dfeb62b07934e115ebf046986b24"
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
