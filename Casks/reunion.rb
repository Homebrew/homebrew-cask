cask "reunion" do
  version "13.0.0,220923unr"
  sha256 "b8e63a0c7dee17eb0d6902bc2965fdd8e9328197ec66151ddeb6c41352efab34"

  url "https://store.leisterpro.com/updates/reunion#{version.major}/Reunion-#{version.csv.first.dots_to_hyphens}-#{version.csv.second}.zip"
  name "Reunion"
  desc "Genealogy (family tree) app"
  homepage "https://www.leisterpro.com/"

  livecheck do
    url "https://store.leisterpro.com/updates/reunion#{version.major}/appcast.xml"
    strategy :sparkle do |item|
      match = item.url.match(%r{/Reunion-(\d+(?:-\d+)*)-(\d+.*?)\.zip}i)
      next if match.blank?

      "#{match[1].tr("-", ".")},#{match[2]}"
    end
  end

  app "Reunion #{version.major}.app"

  zap trash: [
    "~/Documents/Reunion Files",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.leisterpro.reunion#{version.major}.sfl*",
    "~/Library/Application Support/Reunion",
    "~/Library/Caches/com.leisterpro.reunion#{version.major}",
    "~/Library/Preferences/com.leisterpro.reunion.version.plist",
    "~/Library/Preferences/com.leisterpro.reunion#{version.major}.plist",
    "~/Library/Preferences/Reunion Preferences",
  ]
end
