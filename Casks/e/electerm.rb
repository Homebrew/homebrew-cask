cask "electerm" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "5.5.25"
  sha256 arm:          "86c97f185a9f061e04c2bd05ce508f48ebe358a558ab5c048c7b7fe9d0cbcf6a",
         intel:        "0b1ee1a8b6c5c040239c01211860b5776b279d83f7d64d67f95db7e159cde2b1",
         arm64_linux:  "503703051f903a99d2782ee829b233c29b492b091253455a61c2defc718fd71c",
         x86_64_linux: "c7729793b66743be1a8de11bc895dbe33cf20adc278766877cb81c08d1102dda"

  on_macos do
    depends_on macos: :monterey

    app "electerm.app"
    binary "#{appdir}/electerm.app/Contents/MacOS/electerm"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.electerm.electerm.sfl*",
      "~/Library/Application Support/electerm",
      "~/Library/Logs/electerm",
      "~/Library/Preferences/org.electerm.electerm.plist",
      "~/Library/Saved Application State/org.electerm.electerm.savedState",
    ]
  end
  on_linux do
    app_image "electerm-#{version}-linux-#{arch}.AppImage", target: "electerm.AppImage"

    zap trash: "~/.config/electerm"
  end

  url "https://mirror.electerm.org/https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-#{os}-#{arch}.#{url_end}"
  name "electerm"
  desc "Terminal/ssh/sftp/telnet/serialport/RDP/VNC/Spice/ftp client"
  homepage "https://electerm.org/"

  livecheck do
    url "https://electerm.org/data/electerm-github-release.json"
    strategy :json do |json|
      json.dig("release", "tag_name")&.sub("v", "")
    end
  end

  auto_updates true
end
