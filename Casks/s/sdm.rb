cask "sdm" do
  version "22.29.0,51A1BE4D4725B03A2BBA7E8AF7870577D2497D11"
  sha256 "eac1def01e244674b9f2e0b3787b2749941a9257fa67fcfb5248374045ed82ca"

  url "https://downloads.strongdm.com/builds/desktop/#{version.csv.first}/darwin-universal/#{version.csv.second}/SDM-#{version.csv.first}.universal.zip"
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

  depends_on macos: ">= :big_sur"

  app "SDM.app"
  binary "#{appdir}/SDM.app/Contents/Resources/sdm.darwin", target: "sdm"

  uninstall delete: "#{appdir}/SDM.app/Contents/Resources/sdm-socket"

  zap trash: [
    "/usr/local/bin/sdm",
    "~/.sdm",
    "~/Library/Application Support/SDM",
    "~/Library/Caches/com.electron.sdm*",
    "~/Library/Preferences/com.electron.sdm.plist",
    "~/Library/Saved Application State/com.electron.sdm.savedState",
  ]
end
