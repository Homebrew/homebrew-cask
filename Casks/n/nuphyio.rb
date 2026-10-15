cask "nuphyio" do
  version "2.2.8,1791624931580"
  sha256 "44319985975f68285a6a2c0625c508102fd701a97d8d2356f09220413223ca00"

  url "https://cdn.nuphy.io/upgrade/mac/NuPhyIO-#{version.csv.first}-#{version.csv.second}.dmg"
  name "NuPhyIO"
  desc "Keyboard configurator for NuPhy devices"
  homepage "https://www.nuphyio.com/"

  livecheck do
    url "https://drive.nuphy.io/api/nuphyIo/getLatestDriverVersion"
    regex(/NuPhyIO[._-]v?(\d+(?:\.\d+)+)-(\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: :monterey

  app "NuPhyIO.app"

  uninstall quit: "NuPhyIO#{version.major}.your-app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/nuphyio#{version.major}.your-app*",
    "~/Library/Application Support/NuPhyIO",
    "~/Library/Caches/NuPhyIO",
    "~/Library/Logs/NuPhyIO",
    "~/Library/Preferences/NuPhyIO#{version.major}.your-app.plist",
    "~/Library/Saved Application State/NuPhyIO#{version.major}.your-app.savedState",
  ]
end
