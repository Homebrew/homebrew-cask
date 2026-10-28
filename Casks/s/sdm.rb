cask "sdm" do
  version "25.2.0,2C2710120CB2ED27B8EC38080BB5CCB56669F73A"
  sha256 "4e53cce94b170edae98a3e59d782fd2b47ac5fb6ee50d86f0a5dd9fc0cb1a185"

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

  depends_on macos: :monterey

  app "SDM.app"
  binary "#{appdir}/SDM.app/Contents/Resources/sdm.darwin", target: "sdm"

  uninstall delete: "#{appdir}/SDM.app/Contents/Resources/sdm-socket"

  zap trash: [
    "/usr/local/bin/sdm",
    "~/.sdm",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.sdm.sfl*",
    "~/Library/Application Support/SDM",
    "~/Library/Caches/com.electron.sdm*",
    "~/Library/Preferences/com.electron.sdm.plist",
    "~/Library/Saved Application State/com.electron.sdm.savedState",
  ]
end
