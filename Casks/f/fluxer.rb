cask "fluxer" do
  arch arm: "arm64", intel: "x64"
  appimage_arch = on_arch_conditional arm: "arm64", intel: "x86_64"
  os macos: "darwin", linux: "linux"
  file_ext = on_system_conditional macos: "dmg", linux: "appimage"

  version "2026.1101.41644"
  sha256 arm:          "7ea48731a54c8649a7e54b5b1392de9402f5a35478a0cbb9c277ca5945584b92",
         intel:        "7ea48731a54c8649a7e54b5b1392de9402f5a35478a0cbb9c277ca5945584b92",
         arm64_linux:  "a13a364576304a05e10c1f5386921b2e7237380ef708075cf5097cfea9d64af2",
         x86_64_linux: "a73e7d4c0d3630bfd3e1c19cccad274243fff06dc6534b84acd8003cc0dc75e7"

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
