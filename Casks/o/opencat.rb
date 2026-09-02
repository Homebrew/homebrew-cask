cask "opencat" do
  version "26.8.0,2528"
  sha256 "4833f3b424f0486544435be6108693717cce7f0bda8b0d44affbedf4997016e2"

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
