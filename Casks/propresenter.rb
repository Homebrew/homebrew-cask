cask "propresenter" do
  version "7.9,118030345"
  sha256 "a68a4ae418adec939eb156c1d9fdd8764dc9f4aa6d4f806ba2c9e966ebd752bd"

  url "https://renewedvision.com/downloads/propresenter/mac/ProPresenter_#{version.csv.first}_#{version.csv.second}.zip"
  name "ProPresenter"
  desc "Presentation and production application for live events"
  homepage "https://www.renewedvision.com/propresenter.php"

  livecheck do
    url "https://api.renewedvision.com/v1/pro/upgrade?platform=macos&osVersion=0&appVersion=0&buildNumber=0&includeNotes=0"
    regex(%r{/ProPresenter_(\d+(?:\.\d+)+)_(\d+)\.zip}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  conflicts_with cask: "homebrew/cask-versions/propresenter-beta"
  depends_on macos: ">= :mojave"

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
