cask "eloston-chromium" do
  arch arm: "arm64", intel: "x86-64"

  on_intel do
    version "105.0.5195.102-1.1,1662290187"
    sha256 "0510a85830d76751f06a299a707b7c89e18077a0cccaca3a7d8399cc60762356"
  end
  on_arm do
    version "105.0.5195.127-1.1,1663302393"
    sha256 "863fb6b74320b9ecb124058aa05c0020f291a76e129936a37cad9da50262d45d"
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
