cask "tencent-meeting" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "3.47.2.407,8f792a0af699fd29e5a7f6b461a4c2ee"
    sha256 "f8b6a2c5c1d86af42718517130600f56c3a22d61fcc48eda025058fc8a583835"
  end
  on_intel do
    version "3.47.2.407,270f990dec24a6387576fcce1f8dd2cd"
    sha256 "7a7b07f1dfde0e4fe428bc43f0f260156a77ca8dc81e525067bc7d770e13f386"
  end

  url "https://updatecdn.meeting.qq.com/cos/#{version.csv.second}/TencentMeeting_0300000000_#{version.csv.first}.publish.#{arch}.officialwebsite.dmg"
  name "Tencent Meeting"
  name "腾讯会议"
  desc "Cloud video conferencing"
  homepage "https://meeting.tencent.com/"

  livecheck do
    url %Q(https://meeting.tencent.com/web-service/query-download-info?q=[{"package-type":"app","channel":"0300000000","platform":"mac","arch":"#{arch}"}]&nonce=1234567890123456)
    strategy :json do |json|
      json["info-list"]&.map do |item|
        version = item["version"]
        hash = item["md5"]
        next if version.blank? || hash.blank?

        "#{version},#{hash}"
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "TencentMeeting.app"

  uninstall quit: "com.tencent.meeting"

  zap trash: [
    "~/Library/Application Scripts/com.tencent.meeting",
    "~/Library/Application Scripts/FN2V63AD2J.com.tencent.meeting",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tencent.meeting.services.wmexternal.sfl*",
    "~/Library/Application Support/com.tencent.meeting*",
    "~/Library/Caches/com.tencent.meeting*",
    "~/Library/com.tencent.meeting",
    "~/Library/Containers/com.tencent.meeting*",
    "~/Library/Containers/com.tencent.wemeet.FileDelta",
    "~/Library/Group Containers/FN2V63AD2J.com.tencent.meeting",
    "~/Library/HTTPStorages/com.tencent.meeting*",
    "~/Library/Preferences/com.tencent.meeting*.plist",
    "~/Library/Saved Application State/com.tencent.meeting.savedState",
    "~/Library/WebKit/com.tencent.meeting",
  ]
end
