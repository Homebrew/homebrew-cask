cask "electerm" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "5.11.8"
  sha256 arm:          "712d6b154341cfef71f463a1062bea26dfa25e80e85b6a3d9b34c1ccc5ee2ba3",
         intel:        "48185c2154231f4550656fc25643965303090759947da01620dc6ff7ad54517c",
         arm64_linux:  "589f270f0ac576ad3d80ec582bf8187166bd70c04392f996cf733b2575e821d2",
         x86_64_linux: "0d6a2d6a27c8452351529e4aa1f49041060e57c3172e012579e1e06599a165a2"

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
