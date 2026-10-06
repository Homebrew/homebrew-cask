cask "notchnook" do
  version "1.6.3,53,6cfd1241"
  sha256 "6cfd1241ba99c89e2711ac4c5dc0ffa49fa4587aa3edcaaf9de14edc64350f53"

  url "https://downloads.getnotchnook.com/NotchNook-#{version.csv.first}-build#{version.csv.second}-#{version.csv.third}.dmg"
  name "NotchNook"
  desc "Handy utility to manage and customize the notch area"
  homepage "https://getnotchnook.com/"

  livecheck do
    url "https://getnotchnook.com/download"
    regex(/NotchNook[._-]v?(\d+(?:\.\d+)+)[._-]build(\d+)[._-](\h+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
    end
  end

  depends_on macos: :sonoma

  app "NotchNook.app"

  zap trash: [
    "~/Library/Application Support/com.getnotchnook.NotchNook",
    "~/Library/Application Support/lo.cafe.NotchNook",
    "~/Library/Application Support/NotchNook",
    "~/Library/Caches/com.getnotchnook.NotchNook",
    "~/Library/Caches/lo.cafe.NotchNook",
    "~/Library/HTTPStorages/com.getnotchnook.NotchNook",
    "~/Library/HTTPStorages/lo.cafe.NotchNook",
    "~/Library/Preferences/com.getnotchnook.NotchNook.plist",
    "~/Library/Preferences/lo.cafe.NotchNook.plist",
  ]
end
