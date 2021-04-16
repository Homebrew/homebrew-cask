cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "89.0.4389.128-1.1_x86-64"
    sha256 "85f459072f861f0f738b82e6875fd820a1f5efa5ea9bab8ffcc1b60e2ba2688d"
  else
    version "89.0.4389.128-1.1_arm64"
    sha256 "29c826295c9a1926eaf04f2497ec6322a48acc0d05deb49bc2e33ad7d22b6651"
  end

  url "https://github.com/kramred/ungoogled-chromium-macos/releases/download/#{version}/ungoogled-chromium_#{version}-macos.dmg",
      verified: "github.com/kramred/ungoogled-chromium-macos/"
  name "Ungoogled Chromium"
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
