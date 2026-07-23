cask "tencent-meeting" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "3.44.10.450,b22def1095c8899ceaf47758f221734f"
    sha256 "ec20010417d54f8fffded543326baba5cd2061e9b371e3754f835255bda1d7cc"
  end
  on_intel do
    version "3.44.10.450,06dad318d866226421c935c72cbc015a"
    sha256 "d7fb53aaae475d05ff738bbd48a2cb6e02b003d818405fdce541663bc369c56a"
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
  depends_on :macos

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
