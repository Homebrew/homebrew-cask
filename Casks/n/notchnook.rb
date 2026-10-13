cask "notchnook" do
  version "1.6.5,57,746f5387"
  sha256 "746f53875e089b430e78f790dd9c5f42c45bf32cd0614ab08e616d8a78aba0d6"

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

  auto_updates true
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
