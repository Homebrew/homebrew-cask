cask "electerm" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "5.7.15"
  sha256 arm:          "1fd4b23b2746e8f1d2c489c11363c8b6003f7595d603a5770c94a31c3566c76f",
         intel:        "f4317e369381f9a50584c0c9340d6ab128085ecdab50263af1a0f0f7adbebeab",
         arm64_linux:  "9bdece509d861bb699bd06667a25926b9fc0634b8a2c9453d005ae2a7af8b6c8",
         x86_64_linux: "c9d671c8714ea893fbce6bd49d9a3b020aa1307a0414d42bdbaf1962764d7144"

  on_macos do
    depends_on macos: :ventura

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
