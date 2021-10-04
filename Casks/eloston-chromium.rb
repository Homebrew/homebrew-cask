cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "94.0.4606.71-1.1_x86-64"
    sha256 "86a64953d95366c52e41ef389dd29d3ca29c744455183e8fa00c5ce36ffa5ce7"
  else
    version "94.0.4606.71-1.1_arm64"
    sha256 "dd648d99d8ff62fcd43bf3a02443e5dfc9b0303f6fefbd41d8bff4ca49b2225e"
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
