cask "sdm" do
  version "15.55.0,D9367C6BF85E91DC82F646E1193DC624C8437602"
  sha256 "C0F6AD1E805CAEA235B9448A599D88BE73A0AD852DA7AD0C3E9DC75FF4358429"

  url "https://sdm-releases-production.s3.amazonaws.com/builds/sdm-gui/#{version.csv.first}/darwin/universal/#{version.csv.second}/SDM-#{version.csv.first}.universal.zip",
      verified: "sdm-releases-production.s3.amazonaws.com/builds/sdm-gui/"
  name "sdm"
  desc "Strongdm client"
  homepage "https://www.strongdm.com/"

  livecheck do
    url "https://app.strongdm.com/releases/client/darwin/0.0.0"
    strategy :page_match do |page|
      match = page.match(%r{https:.*?/(\h+)/SDM[._-]v?(\d+(?:\.\d+)+)\.universal\.zip}i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  app "SDM.app"

  uninstall delete: "#{appdir}/SDM.app/Contents/Resources/sdm-socket"

  zap trash: [
    "~/.sdm",
    "/usr/local/bin/sdm",
    "~/Library/Application Support/SDM",
    "~/Library/Caches/com.electron.sdm*",
    "~/Library/Preferences/com.electron.sdm.plist",
    "~/Library/Saved Application State/com.electron.sdm.savedState",
  ]
end
