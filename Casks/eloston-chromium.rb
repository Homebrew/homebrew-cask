cask "eloston-chromium" do
  arch = Hardware::CPU.intel? ? "x86-64" : "arm64"

  if Hardware::CPU.intel?
    version "100.0.4896.75-1.1,1649306153"
    sha256 "9a006d8d1d0b755f8e9a50aff38196f55d167f6f0c2bb9667e82e182a60f9d1b"
  else
    version "100.0.4896.75-1.1,1649346229"
    sha256 "88b9df6133794181d7cdf23d5fdb0527d64be05cee291bda445e3f210b2fac9c"
  end

  url "https://github.com/kramred/ungoogled-chromium-macos/releases/download/#{version.csv.first}_#{arch}__#{version.csv.second}/ungoogled-chromium_#{version.csv.first}_#{arch}-macos.dmg",
      verified: "github.com/kramred/ungoogled-chromium-macos/"
  name "Ungoogled Chromium"
  desc "Google Chromium, sans integration with Google"
  homepage "https://ungoogled-software.github.io/ungoogled-chromium-binaries/"

  livecheck do
    url "https://github.com/kramred/ungoogled-chromium-macos/releases/"
    strategy :page_match do |page|
      match = page.match(%r{
        releases/download/(\d+(?:[.-]\d+)+)[._-]#{arch}[._-]{2}(\d+)/
        ungoogled[._-]chromium[._-](\d+(?:[.-]\d+)+)[._-]#{arch}[._-]macos\.dmg
      }xi)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

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
