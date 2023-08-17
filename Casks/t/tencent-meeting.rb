cask "tencent-meeting" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "3.19.2.495,cc29dc2b8577cdaca1b3b876c6d3048d"
    sha256 "9e48d8da765de7005a4bcf196b215cf1de82c501f10bc8bff41f5076d15ec36b"
  end
  on_intel do
    version "3.19.2.495,9c45177e9b766a8028382646cc05aa18"
    sha256 "ba6a43178932d401bae6c6894269b3a26f7da5f7a5532aa3379f913f7a3f83de"
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
