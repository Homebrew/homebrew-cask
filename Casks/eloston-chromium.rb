cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "91.0.4472.114-1.1_x86-64"
    sha256 "8f168904bc0753e133443d66b391bacc67887ce8a47f812c8a186ef97e53d71b"
  else
    version "91.0.4472.114-1.1_arm64"
    sha256 "6b6cac7bf3d42fb1e0d791d597bce399cea140257ee564d18306286e872f2692"
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
