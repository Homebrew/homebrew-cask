cask "melodics" do
  version "4.1.2629,5344D9C9-09E1-41AF-BFFF-B0DBDA2E00E6"
  sha256 "905f2cee2b24514730ab5f39d5518153a5ebbc7d39e2d7d11c6d696f13578164"

  url "https://web-cdn.melodics.com/download/#{version.csv.second}.zip"
  name "Melodics"
  desc "Helps you learn to play your instrument"
  homepage "https://melodics.com/"

  livecheck do
    url "https://web-cdn.melodics.com/download/osxupdatescastv2.xml"
    regex(%r{/(\h+(?:-\h+)+)\.zip}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.version},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Melodics.app"

  zap trash: [
    "~/Library/Application Support/Melodics",
    "~/Library/Caches/com.melodics.melodics",
    "~/Library/Caches/Melodics",
    "~/Library/HTTPStorages/com.melodics.melodics",
    "~/Library/Preferences/com.melodics.Melodics.plist",
    "~/Library/Preferences/com.melodics.Melodics.updates.plist",
    "~/Library/Saved Application State/com.melodics.melodics.savedState",
    "~/Library/WebKit/com.melodics.melodics",
  ]
end
