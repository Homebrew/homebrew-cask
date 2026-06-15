cask "opencat" do
  version "2.94.0,2418"
  sha256 "5edd6562dd8ea08e3d7c4c4b1814527b522a3c44befad9f3ca24f2ead5de32a1"

  url "https://releases.opencat.app/OpenCat-#{version.csv.first}.#{version.csv.second}.dmg"
  name "OpenCat"
  desc "Native AI chat client"
  homepage "https://opencat.app/"

  livecheck do
    url "https://opencat.app/releases/versions.xml"
    strategy :sparkle do |item|
      short_version = (item.short_version.count(".") >= 2) ? item.short_version : "#{item.short_version}.0"
      "#{short_version},#{item.version}"
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "OpenCat.app"

  zap trash: [
    "~/Library/Application Scripts/group.tech.baye.openai",
    "~/Library/Application Support/OpenCat",
    "~/Library/Application Support/tech.baye.OpenCat",
    "~/Library/Application Support/tech.baye.OpenCat.revenuecat",
    "~/Library/Caches/CloudKit/tech.baye.OpenCat",
    "~/Library/Caches/com.crashlytics.data/tech.baye.OpenCat",
    "~/Library/Caches/SentryCrash/OpenCat",
    "~/Library/Caches/tech.baye.OpenCat",
    "~/Library/Caches/tech.baye.OpenCat.revenuecat",
    "~/Library/Containers/tech.baye.OpenCat",
    "~/Library/Group Containers/group.tech.baye.openai",
    "~/Library/HTTPStorages/tech.baye.OpenCat",
    "~/Library/Preferences/tech.baye.OpenCat.plist",
    "~/Library/Saved Application State/tech.baye.OpenCat.savedState",
  ]
end
