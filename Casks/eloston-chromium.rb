cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "88.0.4324.182-1.1"
    sha256 "50ce72d0a7a1782de3f2b8f8d27535d60ce4d585e29bd4ce329eebc34e7ea497"

    url "https://github.com/kramred/ungoogled-chromium-macos/releases/download/#{version}_x86-64/ungoogled-chromium_#{version}_x86-64-macos.dmg",
        verified: "github.com/kramred/ungoogled-chromium-macos/"
  else
    version "88.0.4324.150-1.1"
    sha256 "2f643e98dd9e8384a40a4c5d0d4bc4d4ef5ea7553fa05fd54a15537a647b846a"

    url "https://github.com/kramred/ungoogled-chromium-macos/releases/download/#{version}_arm64/ungoogled-chromium_#{version}_arm64-macos.dmg",
        verified: "github.com/kramred/ungoogled-chromium-macos/"
  end

  appcast "https://github.com/kramred/ungoogled-chromium-macos/releases.atom"
  name "Ungoogled Chromium"
  homepage "https://ungoogled-software.github.io/ungoogled-chromium-binaries/"

  conflicts_with cask: [
    "chromium",
    "freesmug-chromium",
  ]

  app "Chromium.app"

  zap trash: [
    "~/Library/Preferences/org.chromium.Chromium.plist",
    "~/Library/Caches/Chromium",
    "~/Library/Application Support/Chromium",
    "~/Library/Saved Application State/org.chromium.Chromium.savedState",
  ]
end
