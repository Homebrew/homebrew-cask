cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "96.0.4664.93-1.1_x86-64"
    sha256 "821b8398501e958e5103ba78a3690798bffdf9415370be1e070f2a05bbbec0f9"
  else
    version "96.0.4664.93-1.1_arm64"
    sha256 "4ea6150abf02f201b85bc15c0dce125c89412b21a75261759e392daac73db4b8"
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
