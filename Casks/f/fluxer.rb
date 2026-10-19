cask "fluxer" do
  arch arm: "arm64", intel: "x64"
  appimage_arch = on_arch_conditional arm: "arm64", intel: "x86_64"
  os macos: "darwin", linux: "linux"
  file_ext = on_system_conditional macos: "dmg", linux: "appimage"

  version "2026.1018.223338"
  sha256 arm:          "b316490a1cb864544e401d5a0359740f84c6cc43b63bf6081d8d16ce0f453cae",
         intel:        "b316490a1cb864544e401d5a0359740f84c6cc43b63bf6081d8d16ce0f453cae",
         arm64_linux:  "e4e700b376ef78a8e69a0a948e430d7be4df63911db3ef7cffa60d8e64a64944",
         x86_64_linux: "1ba68964ae9d7bad02d170eca258ff5c8696c8111e4bc0fab53540a76555e02c"

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
