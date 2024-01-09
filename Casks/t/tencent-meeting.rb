cask "tencent-meeting" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "3.22.1.446,8f0c6d40b9f8d7f4a38fe3bd88408f1a"
    sha256 "6f7f2cf1bfdea528bfe9f2049abfba078ab71d9c69acf046fe720b7a39b4c2de"
  end
  on_intel do
    version "3.22.1.446,c8874588d13a00f5b5544a832569b574"
    sha256 "ac4f5cf7b98de84696fdedbff30ba33fa368967d98ce2212611bd32b741ea5c5"
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
