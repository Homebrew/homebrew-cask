cask "tencent-meeting" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "3.40.1.403,e9c29695f805ddcb65a5380a585d00d9"
    sha256 "a268763fb7f8817a4877a425acdb907aedddc93028a217bc0da22aaa46c913ee"
  end
  on_intel do
    version "3.40.1.403,0b9ad5eff177a80059961b7be57bf37d"
    sha256 "196b0ca0088892c0867bbe88b315b45d3823831c36ff40feb84ba1f371014f8b"
  end

  url "https://updatecdn.meeting.qq.com/cos/#{version.csv.second}/TencentMeeting_0300000000_#{version.csv.first}.publish.#{arch}.officialwebsite.dmg",
      verified: "updatecdn.meeting.qq.com/cos/"
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

  app "TencentMeeting.app"

  uninstall quit: "com.tencent.meeting"

  zap trash: [
    "~/Library/Application Scripts/com.tencent.meeting",
    "~/Library/Application Scripts/FN2V63AD2J.com.tencent.meeting",
    "~/Library/Caches/com.tencent.meeting*",
    "~/Library/Containers/com.tencent.meeting*",
    "~/Library/Containers/com.tencent.wemeet.FileDelta",
    "~/Library/Group Containers/FN2V63AD2J.com.tencent.meeting",
    "~/Library/HTTPStorages/com.tencent.meeting*",
    "~/Library/Preferences/com.tencent.meeting*.plist",
    "~/Library/Saved Application State/com.tencent.meeting.savedState",
    "~/Library/WebKit/com.tencent.meeting",
  ]
end
