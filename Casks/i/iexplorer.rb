cask "iexplorer" do
  version "4.6.0,180"
  sha256 "1234ab31439a7f3a35ba2c77e7a65977b75d15fb15d823b322adcefb221eed0f"

  url "https://assets.macroplant.com/download/#{version.csv.second}/iExplorer-#{version.csv.first}.dmg"
  name "iExplorer"
  desc "iOS device backup software and file manager"
  homepage "https://macroplant.com/iexplorer"

  # The response format of this URL seems to randomly switch between a plain
  # text changelog and a Sparkle appcast XML file. This matches the version
  # from dmg URLs in the text, which should work in either format.
  livecheck do
    url "https://macroplant.com/iexplorer/appcast"
    regex(%r{/(\d+)/iExplorer[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
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
