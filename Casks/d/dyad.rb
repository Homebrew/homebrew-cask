cask "dyad" do
  arch arm: "arm64", intel: "x64"
  os macos: "-darwin-#{arch}-", linux: "_"
  url_end = on_system_conditional macos: ".zip", linux: "_x86_64.AppImage"

  version "1.23.0"
  sha256 arm:          "50667b4acc859d936222703bddfc51b4729a311ea281ab95f274b216b6a2fe15",
         intel:        "7bc14403480dcc765a02dbaa3aeb51dcc223524e55e17c5022c5973330b021ee",
         x86_64_linux: "9dbea7aa51943a9ad6e9073053b260eb98b107bf02f8ad561e0ed386fe908f0a"

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
