cask "fluxer" do
  arch arm: "arm64", intel: "x64"
  appimage_arch = on_arch_conditional arm: "arm64", intel: "x86_64"
  os macos: "darwin", linux: "linux"
  file_ext = on_system_conditional macos: "dmg", linux: "appimage"

  version "2026.1004.13532"
  sha256 arm:          "2690eb5e0cec7310197de87ce82052f8f347f33699ed652ac49ee6caf8f0cec2",
         intel:        "2690eb5e0cec7310197de87ce82052f8f347f33699ed652ac49ee6caf8f0cec2",
         arm64_linux:  "8f274b8a1baa9e69693ff9a11b2cdb59d511bc64df135237b40fcc0fb24882fd",
         x86_64_linux: "d6cc98ddca50ecbd599f48cfdc82da4747eecbb1223dcb049b4fbf11eefcad12"

  on_macos do
    depends_on macos: :ventura

    app "Fluxer.app"

    uninstall quit: "app.fluxer"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.fluxer.sfl*",
      "~/Library/Application Support/fluxer",
      "~/Library/Caches/app.fluxer*",
      "~/Library/HTTPStorages/app.fluxer",
      "~/Library/Logs/Fluxer",
      "~/Library/Logs/fluxer_desktop",
      "~/Library/Preferences/app.fluxer.plist",
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
    url "https://pkgs.fluxer.com/desktop/stable/darwin/arm64/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end
end
