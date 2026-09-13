cask "nuphyio" do
  version "2.2.7,1788243270464"
  sha256 "e30f7424569401e1442de026c768ac610e964c3924ae5083407c1cc9684a5e6b"

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

  uninstall quit: "NuPhyIO2.your-app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/nuphyio2.your-app*",
    "~/Library/Application Support/NuPhyIO",
    "~/Library/Caches/NuPhyIO",
    "~/Library/Logs/NuPhyIO",
    "~/Library/Preferences/NuPhyIO2.your-app.plist",
    "~/Library/Saved Application State/NuPhyIO2.your-app.savedState",
  ]
end
