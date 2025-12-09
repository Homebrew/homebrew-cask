cask "propresenter" do
  on_big_sur :or_older do
    version "7.14.1,118358275"
    sha256 "266bfffd2753f460f9a22e834aed502c73bed2bf51747238fe4831c9048993db"

    livecheck do
      url "https://api.renewedvision.com/v1/pro/upgrade?platform=macos&osVersion=11.0&appVersion=0&buildNumber=0&includeNotes=0"
      strategy :json do |json|
        json["upgrades"]&.map do |item|
          next if item["version"].blank? || item["buildNumber"].blank?

          "#{item["version"]},#{item["buildNumber"]}"
        end
      end
    end
  end
  on_monterey do
    version "19.0.1,318767361"
    sha256 "b9a72d0443382e2c645b2af2d1b59a28ffe5884b32d7fdc0e527c86a60b10f14"

    livecheck do
      url "https://api.renewedvision.com/v1/pro/upgrade?platform=macos&osVersion=12.0&appVersion=0&buildNumber=0&includeNotes=0"
      strategy :json do |json|
        json["upgrades"]&.map do |item|
          next if item["version"].blank? || item["buildNumber"].blank?

          "#{item["version"]},#{item["buildNumber"]}"
        end
      end
    end
  end
  on_ventura :or_newer do
    version "21.1,352387082"
    sha256 "b9a72d0443382e2c645b2af2d1b59a28ffe5884b32d7fdc0e527c86a60b10f14"

    livecheck do
      url "https://api.renewedvision.com/v1/pro/upgrade?platform=macos&osVersion=99&appVersion=0&buildNumber=0&includeNotes=0"
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
  conflicts_with cask: "propresenter@beta"
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
