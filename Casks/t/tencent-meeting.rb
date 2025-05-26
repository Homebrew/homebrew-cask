cask "tencent-meeting" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "3.34.11.407,71b016a877b36221ef333e512c40d7e2"
    sha256 "f2d288aaa8ee432569c047199e1eeb23438fbfd75da6be6476c187e717992254"
  end
  on_intel do
    version "3.34.11.407,799f52e127fae37f4342e8d55f5f836d"
    sha256 "baa4f563a82cc5955f0ca2b8fd4b3c47bc2cc316d2f54cfc6b6ff96c415516e5"
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
