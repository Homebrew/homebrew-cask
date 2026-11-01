cask "fluxer" do
  arch arm: "arm64", intel: "x64"
  appimage_arch = on_arch_conditional arm: "arm64", intel: "x86_64"
  os macos: "darwin", linux: "linux"
  file_ext = on_system_conditional macos: "dmg", linux: "appimage"

  version "2026.1101.102918"
  sha256 arm:          "493e46a21cd66836939584c9d776cfc6cb30db990514a90d09d7cb5b30b329e6",
         intel:        "493e46a21cd66836939584c9d776cfc6cb30db990514a90d09d7cb5b30b329e6",
         arm64_linux:  "fe69f3ed751d164c7af0be60998bb901fef3f2984c7c347420da115c2e387b71",
         x86_64_linux: "92878b64b128a84cf08db166bc0829c6308b93eddb6381833f9601fd4544d4de"

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
