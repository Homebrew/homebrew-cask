cask "iconchanger" do
  version "1.2.7,2022-12-22,11-45-17"
  sha256 "65952531d571375a60b8b1082f2d655040bf566d4e8692449476a8e2582e8b46"

  url "https://github.com/underthestars-zhy/IconChanger/releases/download/v#{version.csv.first}/IconChanger.#{version.csv.second}.#{version.csv.third}.zip"
  name "IconChanger"
  desc "Change your app's icon"
  homepage "https://github.com/underthestars-zhy/IconChanger"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/IconChanger[._-](\d+(?:-\d+)+)[._-](\d+(?:-\d+)+)\.zip$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]},#{match[3]}"
      end
    end
  end

  depends_on macos: ">= :monterey"

  app "IconChanger #{version.csv.second} #{version.csv.third}/IconChanger.app"

  zap trash: [
    "~/.iconchanger",
    "~/Library/Caches/com.zhuhaoyu.IconChanger",
    "~/Library/HTTPStorages/com.zhuhaoyu.IconChanger",
    "~/Library/Preferences/com.zhuhaoyu.IconChanger.plist",
    "~/Library/Saved Application State/com.zhuhaoyu.IconChanger.savedState",
  ]
end
