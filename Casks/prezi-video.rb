cask "prezi-video" do
  version "1.13.0"
  sha256 "477a3d199b1f108e3e1e394a93787fde89f499dea273937c0c1f5fd410b66410"

  url "https://desktopassets.prezi.com/mac/prezi-video/releases/Prezi_Video_#{version}.dmg"
  name "Prezi Video"
  desc "Lets you interact with your content live as you stream or record"
  homepage "https://prezi.com/video/"

  pkg "Install Prezi Video.pkg"

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
