cask "prezi-video" do
  version "2.23.0"
  sha256 "9b4f651553875d2c7051ce77aed56cc45b501424336b07d7d8f1c480a34a3481"

  url "https://desktopassets.prezi.com/mac/prezi-video/releases/Prezi_Video_#{version}.zip"
  name "Prezi Video"
  desc "Lets you interact with your content live as you stream or record"
  homepage "https://prezi.com/video/"

  livecheck do
    url "https://s3.amazonaws.com/prezidesktop/assets/mac/prezi-video/updates/prezi-video.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  pkg "Prezi_Video.pkg"

  uninstall launchctl: "com.prezi.prezivideo.vcam.assistant",
            quit:      "com.prezi.PreziCast",
            pkgutil:   [
              "com.prezi.PreziCast",
              "com.prezi.prezivideo.vcam.plugin",
            ],
            delete:    [
              "/Applications/Prezi Video.app",
              "/Library/CoreMediaIO/Plug-Ins/DAL/PreziAR.plugin",
            ]

  zap trash: [
    "~/Library/Application Support/com.prezi.PreziCast",
    "~/Library/Preferences/com.prezi.PreziCast.plist",
    "~/Library/Preferences/com.prezi.PreziVideo.vcam",
  ]
end
