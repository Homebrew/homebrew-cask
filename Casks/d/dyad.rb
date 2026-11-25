cask "dyad" do
  arch arm: "arm64", intel: "x64"
  os macos: "-darwin-#{arch}-", linux: "_"
  url_end = on_system_conditional macos: ".zip", linux: "_x86_64.AppImage"

  version "1.24.0"
  sha256 arm:          "edd4dd227fd00d33350f5a25b8c1ca7ff7d67c2b44f637d03e8eef1e8785dbcb",
         intel:        "4087c2a23a370297a8c2606f54e0658319c80c8510e87ff5110b99ff4c839575",
         x86_64_linux: "541e17691fe0bd342ac4ecf099b1d10fd0c7c9b7ebf0f26fc951882401e4c2f2"

  on_macos do
    depends_on macos: :monterey

    app "dyad.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.dyad.sfl*",
      "~/Library/Application Support/dyad",
      "~/Library/Caches/com.electron.dyad",
      "~/Library/Caches/com.electron.dyad.ShipIt",
      "~/Library/HTTPStorages/com.electron.dyad",
      "~/Library/Logs/dyad",
      "~/Library/Preferences/com.electron.dyad.plist",
    ], rmdir: "~/dyad-apps"
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "dyad_#{version}_x86_64.AppImage", target: "Dyad.AppImage"

    zap trash: [
          "~/.config/dyad",
          "~/.local/share/applications/dyad-url-handler.desktop",
        ],
        rmdir: "~/dyad-apps"
  end

  url "https://github.com/dyad-sh/dyad/releases/download/v#{version}/dyad#{os}#{version}#{url_end}"
  name "Dyad"
  desc "AI-powered app builder"
  homepage "https://dyad.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
