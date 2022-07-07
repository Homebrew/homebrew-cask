cask "prezi-video" do
  version "2.10.0"
  sha256 "a336c429a2cf469b60c8182f616e1d8be83ba2fc2bce9211334713b1525f54b4"

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

  uninstall quit:      "com.prezi.PreziCast",
            launchctl: "com.prezi.prezivideo.vcam.assistant",
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
