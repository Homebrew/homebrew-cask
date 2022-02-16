cask "eloston-chromium" do
  arch = Hardware::CPU.intel? ? "x86-64" : "arm64"

  if Hardware::CPU.intel?
    version "98.0.4758.102-1.1,1644985332"
    sha256 "d32215f5e61495eaba255d8d77bd6e4a742db4d1e3b3f5dc1bb8cbb9b9669e71"
  else
    version "98.0.4758.102-1.1,1645022010"
    sha256 "5a117fa7d3fd5bded48e2cba8268d7e2beb224207ab2cf78d2f902cbcaececd7"
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
