cask "tencent-meeting" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "3.19.23.404,db340fb3b24dd540c9f49d2177e158a8"
    sha256 "17c06effc0d7be2824bbb9eb1d09470d8e8fe9286437a28a9dd843143c6ed7a1"
  end
  on_intel do
    version "3.19.23.404,5ed8ffbaf33f9e6cf33ba839847164af"
    sha256 "ecc9397bd58c70fd00aa6271152a9b250ccdbb245ecec0c816024030495f297b"
  end

  url "https://updatecdn.meeting.qq.com/cos/#{version.csv.second}/TencentMeeting_0300000000_#{version.csv.first}.publish.#{arch}.dmg",
      verified: "updatecdn.meeting.qq.com/cos/"
  name "Tencent Meeting"
  name "腾讯会议"
  desc "Cloud video conferencing"
  homepage "https://meeting.tencent.com/"

  livecheck do
    url "https://meeting.tencent.com/web-service/query-app-update-info/?from=2&app_publish_channel=TencentInside&sdk_id=0300000000&os=mac&arch=#{arch}&appver=#{version.csv.first}"
    regex(%r{/cos/(\h+)/TencentMeeting[._-].+?v?(\d+(?:\.\d+)+)})
    strategy :json do |json, regex|
      match = json.dig("target", "url")&.match(regex)
      next version if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "TencentMeeting.app"

  uninstall quit: "com.tencent.meeting"

  zap trash: [
    "~/Library/Application Scripts/FN2V63AD2J.com.tencent.meeting",
    "~/Library/Application Scripts/com.tencent.meeting",
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
