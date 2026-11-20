cask "fluxer" do
  arch arm: "arm64", intel: "x64"
  appimage_arch = on_arch_conditional arm: "arm64", intel: "x86_64"
  os macos: "darwin", linux: "linux"
  file_ext = on_system_conditional macos: "dmg", linux: "appimage"

  version "2026.1120.163638"
  sha256 arm:          "8e5a56ac991a13ad1ca4f2ada601f52dbe34658c2782a30822f26158be0536cd",
         intel:        "8e5a56ac991a13ad1ca4f2ada601f52dbe34658c2782a30822f26158be0536cd",
         arm64_linux:  "4571e5c34238702907dba50f18a71a9df751492d7344c0e9dd8ca368b0f3ab7c",
         x86_64_linux: "484ff77ddf51586543d99103d12ebd60e5a29e3196153ba71fa8186cce808cb6"

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
