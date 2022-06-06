cask "sdm" do
  version "15.56.0,4DF801E88B49CC9016DC0A278C53CB30BBB2B060"
  sha256 "dc436d7df37aee616c084988cbfa591ed8818af7e570879582a3e869cba04806"

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
