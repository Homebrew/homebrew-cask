cask "sdm" do
  version "15.58.0,9CEBD65A85DBAD91F1D6296C4122894DC7A91E0D"
  sha256 "27767acb103a90170d8c0b0102f6936e82dde5ba83835ad3b9037ce888b4c937"

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
