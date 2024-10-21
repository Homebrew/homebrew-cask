cask "tencent-meeting" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "3.29.3.488,944cc0eb51fe4b46223d62f9bef82ef3"
    sha256 "e6037f215c4da27ba68ce2b63849219695111a0bb07defcc17eaf595606ba34d"
  end
  on_intel do
    version "3.29.3.488,f9cef2410ec9858ae22ea7e1f0f7edd7"
    sha256 "c1463acf32d804566148206c819a64edf39d4f8b47b92d00ae59637dd526ae2d"
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
  depends_on macos: ">= :el_capitan"

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
