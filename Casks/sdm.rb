cask "sdm" do
  version "15.45.0,D6A5C8C512E194970DEC7F47B7C4CD7B6FC31676"
  sha256 "45fc1b07ca923dee4184579badee901c6b50dead615954a4c66881720c8f11aa"

  url "https://sdm-releases-production.s3.amazonaws.com/builds/sdm-gui/#{version.csv.first}/darwin/#{version.csv.second}/SDM-#{version.csv.first}.zip",
      verified: "sdm-releases-production.s3.amazonaws.com/builds/sdm-gui/"
  name "sdm"
  desc "Strongdm client"
  homepage "https://www.strongdm.com/"

  livecheck do
    url "https://app.strongdm.com/releases/client/darwin/0.0.0"
    strategy :page_match do |page|
      match = page.match(%r{https:.*?/(\h+)/SDM[._-]v?(\d+(?:\.\d+)+)\.zip}i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  app "SDM.app"

  uninstall delete: "#{appdir}/SDM.app/Contents/Resources/sdm-socket"

  zap trash: [
    "~/.sdm",
    "~/Library/Application Support/SDM",
    "~/Library/Caches/com.electron.sdm*",
    "~/Library/Preferences/com.electron.sdm.plist",
    "~/Library/Saved Application State/com.electron.sdm.savedState",
  ]
end
