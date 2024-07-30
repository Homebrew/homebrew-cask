cask "propresenter@beta" do
  on_big_sur :or_older do
    version "7.14.1,118358275"
    sha256 "266bfffd2753f460f9a22e834aed502c73bed2bf51747238fe4831c9048993db"

    livecheck do
      url "https://api.renewedvision.com/v1/pro/upgrade?platform=macos&osVersion=11.0&appVersion=0&buildNumber=0&includeNotes=0&channel=beta"
      strategy :json do |json|
        json["upgrades"]&.map do |item|
          next if item["version"].blank? || item["buildNumber"].blank?

          "#{item["version"]},#{item["buildNumber"]}"
        end
      end
    end
  end
  on_monterey :or_newer do
    version "17,285212702"
    sha256 "593e7cd11e45262c2729e6f569ebac7302215aac8073a289d6e7f5f8f8f87212"

    livecheck do
      url "https://api.renewedvision.com/v1/pro/upgrade?platform=macos&osVersion=#{MacOS.full_version}&appVersion=0&buildNumber=0&includeNotes=0&channel=beta"
      strategy :json do |json|
        json["upgrades"]&.map do |item|
          next if item["version"].blank? || item["buildNumber"].blank?

          "#{item["version"]},#{item["buildNumber"]}"
        end
      end
    end
  end

  url "https://renewedvision.com/downloads/propresenter/mac/ProPresenter_#{version.csv.first}_#{version.csv.second}.zip"
  name "ProPresenter"
  desc "Presentation and production application for live events"
  homepage "https://renewedvision.com/propresenter/"

  auto_updates true
  conflicts_with cask: "propresenter"
  depends_on macos: ">= :big_sur"

  app "ProPresenter.app"

  zap trash: [
        "/Library/Application Support/RenewedVision",
        "/Library/Caches/com.renewedvision.ProPresenter#{version.major}",
        "/Users/Shared/Renewed Vision Media",
        "~/Library/Application Support/RenewedVision/ProPresenter#{version.major}",
        "~/Library/Caches/com.renewedvision.ProPresenter#{version.major}",
        "~/Library/Caches/KSCrashReports/ProPresenter #{version.major}",
        "~/Library/Caches/Sessions/ProPresenter #{version.major}",
        "~/Library/Preferences/com.renewedvision.ProPresenter#{version.major}.plist",
      ],
      rmdir: [
        "~/Library/Application Support/RenewedVision",
        "~/Library/Caches/KSCrashReports",
        "~/Library/Caches/Sessions",
      ]
end
