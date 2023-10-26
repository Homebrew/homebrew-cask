cask "sdm" do
  version "21.33.0,52C6A892B2E10C153787C1317616CCB321F386AE"
  sha256 "6a20b8d034e90b3ad624947de221a752508ed07ed7a20dc230ab1c383572e296"

  url "https://downloads.strongdm.com/builds/desktop/#{version.csv.first}/darwin/universal/#{version.csv.second}/SDM-#{version.csv.first}.universal.zip"
  name "sdm"
  desc "StrongDM client"
  homepage "https://www.strongdm.com/"

  livecheck do
    url "https://app.strongdm.com/releases/desktop/darwin/0.0.0"
    regex(%r{https:.*?/(\h+)/SDM[._-]v?(\d+(?:\.\d+)+)\.universal\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
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
