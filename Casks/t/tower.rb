cask "tower" do
  version "10.3,380,b025a9e9"
  sha256 "13e073d5154c801be69bf0ef251be4d041275bde16fe5e5993c34229dd6f93ac"

  url "https://www.git-tower.com/apps/tower3-mac/#{version.csv.second}-#{version.csv.third}/Tower-#{version.csv.first}-#{version.csv.second}.zip"
  name "Tower"
  desc "Git client focusing on power and productivity"
  homepage "https://www.git-tower.com/"

  livecheck do
    url "https://www.git-tower.com/updates/tower3-mac/stable/releases/latest/download"
    regex(%r{(\d+(?:\.\d+)*)-([a-z0-9]+)/Tower-(\d+(?:\.\d+)+)-(\d+(?:\.\d+)*)\.zip}i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map { |match| "#{match[2]},#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Tower.app"
  binary "#{appdir}/Tower.app/Contents/MacOS/gittower"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.fournova.tower*.sfl*",
    "~/Library/Application Support/com.fournova.Tower*",
    "~/Library/Caches/com.fournova.Tower*",
    "~/Library/Preferences/com.fournova.Tower*.plist",
  ]
end
