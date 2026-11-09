cask "emeetlink" do
  version "5.3.8,2026.0814.1137"
  sha256 "3e194ab30fd5209f75e53581ae8f927d0d4fcffa026b47872b0cebd435793aec"

  url "https://emeetapp.s3.us-west-2.amazonaws.com/emeet_link/EMEETLINK_macOS_V#{version.csv.first}_#{version.csv.second}.dmg"
  name "EMEETLINK"
  desc "Configuration utility for EMEET webcams and speakerphones"
  homepage "https://emeet.com/pages/software-service-downloads"

  livecheck do
    url "https://emeetapp.s3.us-west-2.amazonaws.com/emeet_link/software_upgrade_config.json"
    regex(/EMEETLINK[._-]macOS[._-]V?(\d+(?:\.\d+)+)[._-](\d+(?:\.\d+)+)\.dmg/i)
    strategy :json do |json, regex|
      match = json["mac_global_url"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on :macos

  app "EMEETLINK.app"

  zap trash: [
    "~/Documents/EMEETLINK",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.emeet.emeetlink.sfl*",
    "~/Library/Caches/com.eMeet.eMeetLink",
    "~/Library/HTTPStorages/com.eMeet.eMeetLink",
    "~/Library/Preferences/com.eMeet.eMeetLink.plist",
  ]
end
