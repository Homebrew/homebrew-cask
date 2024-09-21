cask "reunion" do
  version "14.0.0,240912unr"
  sha256 "3eb4a68bd7be8e04f975f3fa0755d28c1f37f8c68b07eb25f3ea1b641dc9799b"

  url "https://store.leisterpro.com/updates/reunion#{version.major}/Reunion-#{version.csv.first.dots_to_hyphens}-#{version.csv.second}.zip"
  name "Reunion"
  desc "Genealogy (family tree) app"
  homepage "https://www.leisterpro.com/"

  livecheck do
    url "https://store.leisterpro.com/updates/reunion#{version.major}/appcast.xml"
    regex(%r{/Reunion-(\d+(?:-\d+)*)-(\d+.*?)\.zip}i)
    strategy :sparkle do |item, regex|
      item.url.scan(regex).map do |match|
        "#{match[0].tr("-", ".")},#{match[1]}"
      end
    end
  end

  app "Reunion #{version.major}.app"

  zap trash: [
    "~/Documents/Reunion Files",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.leisterpro.reunion#{version.major}.sfl*",
    "~/Library/Application Support/Reunion",
    "~/Library/Caches/com.leisterpro.reunion#{version.major}",
    "~/Library/Preferences/com.leisterpro.reunion#{version.major}.plist",
    "~/Library/Preferences/com.leisterpro.reunion.version.plist",
    "~/Library/Preferences/Reunion Preferences",
  ]
end
