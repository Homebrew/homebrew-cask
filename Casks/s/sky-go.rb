cask "sky-go" do
  version :latest
  sha256 :no_check

  url "https://desktopclient.ott.sky.com/skygodesktop/GB/SkyGoInstaller.zip"
  name "Sky Go"
  desc "On-demand TV streaming service"
  homepage "https://www.sky.com/watch/sky-go/all"

  # Homebrew automatically unzips the file.
  installer manual: "SkyGoInstaller.app"

  # Automatically open the installer when download completes
  postflight do
    system_command "/usr/bin/open",
                   args: ["-a", "#{staged_path}/SkyGoInstaller.app"],
                   sudo: false
  end

  uninstall quit:  "com.bskyb.skygocontrol",
            trash: "/Applications/Sky Go.app"

  zap trash: [
    "~/Library/Application Support/com.bskyb.skygoplayer",
    "~/Library/Application Support/Sky Go",
    "~/Library/Caches/com.bskyb.installer.go",
    "~/Library/HTTPStorages/com.bskyb.installer.go",
    "~/Library/Preferences/com.bskyb.skygoplayer.plist",
  ]
end
