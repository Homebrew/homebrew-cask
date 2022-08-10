cask "sdm" do
  version "15.57.0,2EE548135F1FC9C9B13808A8522304251FD4D571"
  sha256 "61b47c5509291daafe35c0f73964654a087b63e497964f586e7600d3c5b7c3b4"

  url "https://downloads.strongdm.com/builds/sdm-gui/#{version.csv.first}/darwin/universal/#{version.csv.second}/SDM-#{version.csv.first}.universal.zip"
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
