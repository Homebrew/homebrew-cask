cask "notesnook" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"
  livecheck_folder = on_system_conditional macos: "darwin", linux: "linux"

  version "3.4.12"
  sha256 arm:          "dead4a0564b37fc29e408c759bfb623d9740f48444b759696144037178ca2c28",
         intel:        "ec2732288cf8ba5837acd92676160a0b7f36a434b11d6eefdb422c1f374f8668",
         arm64_linux:  "bd34a4c595b0a7d6335b4e23c235f6d3481968d88ba1fd0fcaa2e3a199f3a12b",
         x86_64_linux: "f9fe8bd083a69a6b3023a7ef9163ca797066fb1ca8f8316d1db8f011e9051a0f"

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
