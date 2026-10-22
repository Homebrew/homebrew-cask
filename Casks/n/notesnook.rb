cask "notesnook" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"
  livecheck_folder = on_system_conditional macos: "darwin", linux: "linux"

  version "3.4.10"
  sha256 arm:          "e05df807ca74acea1b0b93dead73e93151808ac6be73538b020978c461b556e1",
         intel:        "5e9fac9692d5760a9e629220d11f93caa8ac57a3816a7dda77317cdbfb087165",
         arm64_linux:  "631085b7eadd83af8f19ee9fc2fa15471d82b57176d58354adf58b489e67d630",
         x86_64_linux: "891a11e79015ec98b0365ef0c4944b96251ca501c1846cda5a4075766282a1df"

  on_macos do
    app "Notesnook.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.streetwriters.notesnook.sfl*",
      "~/Library/Application Support/Notesnook",
      "~/Library/Logs/Notesnook",
      "~/Library/Preferences/com.streetwriters.notesnook.plist",
      "~/Library/Preferences/org.streetwriters.notesnook.plist",
    ]
  end
  on_linux do
    app_image "notesnook_linux_#{arch}.AppImage", target: "Notesnook.AppImage"

    zap trash: [
      "~/.cache/@notesnookdesktop-updater",
      "~/.cache/notesnook",
      "~/.config/autostart/notesnook.desktop",
      "~/.config/Notesnook",
    ]
  end

  url "https://github.com/streetwriters/notesnook/releases/download/v#{version}/notesnook_#{os}_#{arch}.#{url_end}"
  name "Notesnook"
  desc "Privacy-focused note taking app"
  homepage "https://notesnook.com/"

  livecheck do
    url "https://notesnook.com/api/v1/releases/#{livecheck_folder}/latest/latest-#{os}.yml"
    strategy :electron_builder
  end

  auto_updates true
end
