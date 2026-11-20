cask "emeetlink" do
  version "5.4.6,2026.1111.1335"
  sha256 "fbd50455a7c2ec5af020b4704c88f126699a7643038df53f8f1c4062d667b93e"

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
