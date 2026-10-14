cask "fluxer" do
  arch arm: "arm64", intel: "x64"
  appimage_arch = on_arch_conditional arm: "arm64", intel: "x86_64"
  os macos: "darwin", linux: "linux"
  file_ext = on_system_conditional macos: "dmg", linux: "appimage"

  version "2026.1013.200953"
  sha256 arm:          "80dd825a9addcd2c3a966babd11823aaf70d683e29b14ad20e98a87b41a9b44c",
         intel:        "80dd825a9addcd2c3a966babd11823aaf70d683e29b14ad20e98a87b41a9b44c",
         arm64_linux:  "e1182dbb96b4ff55e36d40f2102581a8456fa758cd0cb93634fd1ce554c0ebf4",
         x86_64_linux: "3a1d1b31ce67d1b4ae9627fb617d29077b4c40f4f7110c818b2479ce4ecf2949"

  on_macos do
    auto_updates true
    depends_on macos: :ventura

    app "Fluxer.app"

    uninstall launchctl: "app.fluxer.ShipIt",
              quit:      "app.fluxer"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.fluxer.sfl*",
      "~/Library/Application Support/fluxer",
      "~/Library/Caches/app.fluxer*",
      "~/Library/HTTPStorages/app.fluxer",
      "~/Library/Logs/Fluxer",
      "~/Library/Logs/fluxer_desktop",
      "~/Library/Preferences/app.fluxer.plist",
      "~/Library/Preferences/ByHost/app.fluxer.ShipIt.*.plist",
    ]
  end
  on_linux do
    app_image "Fluxer-#{version}-linux-#{appimage_arch}.AppImage", target: "Fluxer.AppImage"

    zap trash: "~/.config/fluxer"
  end

  url "https://pkgs.fluxer.com/desktop/stable/#{os}/#{arch}/#{version}/#{file_ext}"
  name "Fluxer"
  desc "Chat for friends, groups, and communities with text, voice, and video"
  homepage "https://fluxer.app/"

  livecheck do
    url "https://pkgs.fluxer.com/desktop/stable/#{os}/#{arch}/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end
end
