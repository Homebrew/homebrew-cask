cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "90.0.4430.85-1.1_x86-64"
    sha256 "9c88f359b0a1d3f33375bc8a49aea881d364c1e19bfd542c5bfad2283e52e237"
  else
    version "90.0.4430.72-1.2_arm64"
    sha256 "53c397d2d66482a7d1be7808a8c3adaf4be5ece77c82ce5506cbef1e7e04c4ca"
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
