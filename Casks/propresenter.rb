cask "propresenter" do
  version "7.7.1,117899527"
  sha256 "cebf9ca9c79d75538ff6e444ab18386f6f1e5b7f2703eda22db3c66702e4a195"

  url "https://renewedvision.com/downloads/propresenter/mac/ProPresenter_#{version.before_comma}_#{version.after_comma}.zip"
  name "ProPresenter"
  desc "Presentation and production application for live events"
  homepage "https://www.renewedvision.com/propresenter.php"

  livecheck do
    url "https://api.renewedvision.com/v1/pro/upgrade?platform=macos&osVersion=0&appVersion=0&buildNumber=0&includeNotes=0"
    regex(%r{/ProPresenter_(\d+(?:\.\d+)*)_(\d+)\.zip}i)
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
    "~/Library/Application Support/RenewedVision/ProPresenter#{version.major}",
    "~/Library/Caches/KSCrashReports/ProPresenter #{version.major}",
    "~/Library/Caches/Sessions/ProPresenter #{version.major}",
    "~/Library/Caches/com.renewedvision.ProPresenter#{version.major}",
    "~/Library/Preferences/com.renewedvision.ProPresenter#{version.major}.plist",
    "/Library/Application Support/RenewedVision",
    "/Library/Caches/com.renewedvision.ProPresenter#{version.major}",
    "/Users/Shared/Renewed Vision Media",
  ],
      rmdir: [
        "~/Library/Application Support/RenewedVision",
        "~/Library/Caches/KSCrashReports",
        "~/Library/Caches/Sessions",
      ]
end
