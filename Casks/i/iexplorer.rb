cask "iexplorer" do
  version "4.6.0,180"
  sha256 "1234ab31439a7f3a35ba2c77e7a65977b75d15fb15d823b322adcefb221eed0f"

  url "https://assets.macroplant.com/download/#{version.csv.second}/iExplorer-#{version.csv.first}.dmg"
  name "iExplorer"
  desc "iOS device backup software and file manager"
  homepage "https://macroplant.com/iexplorer"

  livecheck do
    url "https://macroplant.com/iexplorer/mac/v#{version.major}/appcast"
    strategy :sparkle do |item|
      build = item.url[%r{/(\d+)/iExplorer[._-](?:\d+(?:\.\d+)*)\.dmg}i, 1]
      next if build.blank?

      "#{item.version},#{build}"
    end
  end

  app "iExplorer.app"

  zap trash: [
        "~/Library/Caches/com.macroplant.iExplorer",
        "~/Library/Caches/KSCrash/iExplorer",
        "~/Library/HTTPStorages/com.macroplant.iExplorer",
        "~/Library/HTTPStorages/com.macroplant.iExplorer.binarycookies",
        "~/Library/Preferences/com.macroplant.iExplorer.plist",
        "~/Library/Saved Application State/com.macroplant.iExplorer.savedState",
      ],
      rmdir: "~/Music/iExplorer Import"

  caveats do
    requires_rosetta
  end
end
