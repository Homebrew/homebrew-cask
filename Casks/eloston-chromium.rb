cask "eloston-chromium" do
  if Hardware::CPU.intel?
    arch = "x86-64"
    version "89.0.4389.90-1.1"
    sha256 "2ee3dcd69e5852c588365bc8ce1b9e5a4fd7e4dc8b9ec200ea1e5b9db2afca48"
  else
    arch = "arm64"
    version "89.0.4389.90-1.1"
    sha256 "1fe0c033da30ff3012226a658b6d1db7a98a3cb564dea7cbd5b5a712de18eb98"
  end

  url "https://github.com/kramred/ungoogled-chromium-macos/releases/download/#{version}_#{arch}/ungoogled-chromium_#{version}_#{arch}-macos.dmg",
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
